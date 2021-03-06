
package io.swagger.client.model


case class FieldGroupObject (
    _name: String,
    _fields: Option[List[FieldObject_fields]],
    _custom: Option[Boolean]
)
object FieldGroupObject {
    def toStringBody(var_name: Object, var_fields: Object, var_custom: Object) =
        s"""
        | {
        | "name":$var_name,"fields":$var_fields,"custom":$var_custom
        | }
        """.stripMargin
}
