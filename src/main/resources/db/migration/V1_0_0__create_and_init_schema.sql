create table if not exists breed
(
    id               serial      not null primary key,
    master_breed     varchar(50) not null,
    sub_breed varchar(50),
    image            bytea
);

insert into breed (master_breed, sub_breed)
SELECT master_breed, sub_breed
from json_populate_recordset(NULL::breed,
                             '[
                               {
                                 "master_breed": "affenpinscher",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "african",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "airedale",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "akita",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "appenzeller",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "australian",
                                 "sub_breed": "shepherd"
                               },
                               {
                                 "master_breed": "basenji",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "beagle",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "bluetick",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "borzoi",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "bouvier",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "boxer",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "brabancon",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "briard",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "buhund",
                                 "sub_breed": "norwegian"
                               },
                               {
                                 "master_breed": "bulldog",
                                 "sub_breed": "boston"
                               },
                               {
                                 "master_breed": "bulldog",
                                 "sub_breed": "english"
                               },
                               {
                                 "master_breed": "bulldog",
                                 "sub_breed": "french"
                               },
                               {
                                 "master_breed": "bullterrier",
                                 "sub_breed": "staffordshire"
                               },
                               {
                                 "master_breed": "cattledog",
                                 "sub_breed": "australian"
                               },
                               {
                                 "master_breed": "chihuahua",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "chow",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "clumber",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "cockapoo",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "collie",
                                 "sub_breed": "border"
                               },
                               {
                                 "master_breed": "coonhound",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "corgi",
                                 "sub_breed": "cardigan"
                               },
                               {
                                 "master_breed": "cotondetulear",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "dachshund",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "dalmatian",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "dane",
                                 "sub_breed": "great"
                               },
                               {
                                 "master_breed": "deerhound",
                                 "sub_breed": "scottish"
                               },
                               {
                                 "master_breed": "dhole",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "dingo",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "doberman",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "elkhound",
                                 "sub_breed": "norwegian"
                               },
                               {
                                 "master_breed": "entlebucher",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "eskimo",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "finnish",
                                 "sub_breed": "lapphund"
                               },
                               {
                                 "master_breed": "frise",
                                 "sub_breed": "bichon"
                               },
                               {
                                 "master_breed": "germanshepherd",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "greyhound",
                                 "sub_breed": "italian"
                               },
                               {
                                 "master_breed": "groenendael",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "havanese",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "hound",
                                 "sub_breed": "afghan"
                               },
                               {
                                 "master_breed": "hound",
                                 "sub_breed": "basset"
                               },
                               {
                                 "master_breed": "hound",
                                 "sub_breed": "blood"
                               },
                               {
                                 "master_breed": "hound",
                                 "sub_breed": "english"
                               },
                               {
                                 "master_breed": "hound",
                                 "sub_breed": "ibizan"
                               },
                               {
                                 "master_breed": "hound",
                                 "sub_breed": "plott"
                               },
                               {
                                 "master_breed": "hound",
                                 "sub_breed": "walker"
                               },
                               {
                                 "master_breed": "husky",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "keeshond",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "kelpie",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "komondor",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "kuvasz",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "labradoodle",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "labrador",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "leonberg",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "lhasa",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "malamute",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "malinois",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "maltese",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "mastiff",
                                 "sub_breed": "bull"
                               },
                               {
                                 "master_breed": "mastiff",
                                 "sub_breed": "english"
                               },
                               {
                                 "master_breed": "mastiff",
                                 "sub_breed": "tibetan"
                               },
                               {
                                 "master_breed": "mexicanhairless",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "mix",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "mountain",
                                 "sub_breed": "bernese"
                               },
                               {
                                 "master_breed": "mountain",
                                 "sub_breed": "swiss"
                               },
                               {
                                 "master_breed": "newfoundland",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "otterhound",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "ovcharka",
                                 "sub_breed": "caucasian"
                               },
                               {
                                 "master_breed": "papillon",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "pekinese",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "pembroke",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "pinscher",
                                 "sub_breed": "miniature"
                               },
                               {
                                 "master_breed": "pitbull",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "pointer",
                                 "sub_breed": "german"
                               },
                               {
                                 "master_breed": "pointer",
                                 "sub_breed": "germanlonghair"
                               },
                               {
                                 "master_breed": "pomeranian",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "poodle",
                                 "sub_breed": "medium"
                               },
                               {
                                 "master_breed": "poodle",
                                 "sub_breed": "miniature"
                               },
                               {
                                 "master_breed": "poodle",
                                 "sub_breed": "standard"
                               },
                               {
                                 "master_breed": "poodle",
                                 "sub_breed": "toy"
                               },
                               {
                                 "master_breed": "pug",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "puggle",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "pyrenees",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "redbone",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "retriever",
                                 "sub_breed": "chesapeake"
                               },
                               {
                                 "master_breed": "retriever",
                                 "sub_breed": "curly"
                               },
                               {
                                 "master_breed": "retriever",
                                 "sub_breed": "flatcoated"
                               },
                               {
                                 "master_breed": "retriever",
                                 "sub_breed": "golden"
                               },
                               {
                                 "master_breed": "ridgeback",
                                 "sub_breed": "rhodesian"
                               },
                               {
                                 "master_breed": "rottweiler",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "saluki",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "samoyed",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "schipperke",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "schnauzer",
                                 "sub_breed": "giant"
                               },
                               {
                                 "master_breed": "schnauzer",
                                 "sub_breed": "miniature"
                               },
                               {
                                 "master_breed": "setter",
                                 "sub_breed": "english"
                               },
                               {
                                 "master_breed": "setter",
                                 "sub_breed": "gordon"
                               },
                               {
                                 "master_breed": "setter",
                                 "sub_breed": "irish"
                               },
                               {
                                 "master_breed": "sharpei",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "sheepdog",
                                 "sub_breed": "english"
                               },
                               {
                                 "master_breed": "sheepdog",
                                 "sub_breed": "shetland"
                               },
                               {
                                 "master_breed": "shiba",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "shihtzu",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "spaniel",
                                 "sub_breed": "blenheim"
                               },
                               {
                                 "master_breed": "spaniel",
                                 "sub_breed": "brittany"
                               },
                               {
                                 "master_breed": "spaniel",
                                 "sub_breed": "cocker"
                               },
                               {
                                 "master_breed": "spaniel",
                                 "sub_breed": "irish"
                               },
                               {
                                 "master_breed": "spaniel",
                                 "sub_breed": "japanese"
                               },
                               {
                                 "master_breed": "spaniel",
                                 "sub_breed": "sussex"
                               },
                               {
                                 "master_breed": "spaniel",
                                 "sub_breed": "welsh"
                               },
                               {
                                 "master_breed": "springer",
                                 "sub_breed": "english"
                               },
                               {
                                 "master_breed": "stbernard",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "american"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "australian"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "bedlington"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "border"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "cairn"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "dandie"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "fox"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "irish"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "kerryblue"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "lakeland"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "norfolk"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "norwich"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "patterdale"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "russell"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "scottish"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "sealyham"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "silky"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "tibetan"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "toy"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "welsh"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "westhighland"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "wheaten"
                               },
                               {
                                 "master_breed": "terrier",
                                 "sub_breed": "yorkshire"
                               },
                               {
                                 "master_breed": "tervuren",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "vizsla",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "waterdog",
                                 "sub_breed": "spanish"
                               },
                               {
                                 "master_breed": "weimaraner",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "whippet",
                                 "sub_breed": null
                               },
                               {
                                 "master_breed": "wolfhound",
                                 "sub_breed": "irish"
                               }
                             ]'
    );
