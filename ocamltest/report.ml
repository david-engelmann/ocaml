type t =
  | Tsl_begin of {prefix_dir: string; filename: string; planned: int }
  | Tsl_end
  | Test_begin of {title : string;}
  | Test_end of {title : string ; result :  Result.t }
  | Error of string

let error ~msg = Error msg
let test_begin ~title = Test_begin {title}
let test_end ~title ~result = Test_end {title; result}
let tsl_begin ~prefix_dir ~filename ~planned =  Tsl_begin {prefix_dir; filename; planned}
let tsl_end () = Tsl_end


