// removed the key and decorated each of the entities with aspects
// aspects for entities with canonical user id
using {cuid, managed} from '@sap/cds/common';

service bookshop {
    entity Books{
        key ID: Integer;
        title: String;
    }

    entity Authors{
        key ID: Integer;
        name: String;
    }

}


// service bookshop {
//     entity Books {
//         key ID: Integer;
//         title: String;
//     }

//     entity Authors {
//         key ID: Integer;
//         name: String;
//     }

//     entity Customer {
//         key ID: Integer;
//         name: String;
//         email: String;
//     }

// }

  // "cds": {
  //   "requires": {
  //     "db": {
  //       "kind": "sqlite",
  //       "credentials": {
  //         "url": "bookshop.sqlite"
  //       }
  //     }
  //   }
  // }
