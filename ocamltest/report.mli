type t =
  | Tsl_begin of {prefix_dir: string; filename: string; planned: int }
  | Tsl_end
  | Test_begin of {title : string}
  | Test_end of {title : string ; result : Result.t }
  | Error of string

val error : msg:string -> t
val test_begin: title:string -> t
val test_end : title:string -> result:Result.t ->  t
val tsl_begin: prefix_dir:string -> filename:string -> planned:int -> t
val tsl_end: unit -> t
