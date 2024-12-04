// removed the key and decorated each of the entities with aspects
// aspects for entities with canonical user id
// using from '@sap/cds-common-content';
// using { cuid,  managed } from '@sap/cds/common';

aspect cuid {
    key ID : UUID;
}

// service bookshop {
//     entity Books : cuid {
//         title  : String;
//         author : Association to Authors;
//     }

//     entity Authors : cuid {
//         name : String;
//     }

// }

service bookshop {
    entity Books : cuid {
        //one book - one author
        title  : String;
        author_ID: type of Authors:ID;
        author: Association to Authors on author.ID = author_ID;
    }    

    entity Authors : cuid {
        //one author - many books
        name : String;
        books: Association to many Books on books.author = $self;
    }

}

// service banana {
//     //
//     entity something as projection on bookshop.Books {title}
// }
