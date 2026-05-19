.class public final enum La7/f;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La7/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:La7/f;

.field public static final enum c:La7/f;

.field public static final enum d:La7/f;

.field public static final enum e:La7/f;

.field public static final enum f:La7/f;

.field public static final enum g:La7/f;

.field public static final enum h:La7/f;

.field public static final enum i:La7/f;

.field public static final enum j:La7/f;

.field public static final enum k:La7/f;

.field public static final synthetic l:[La7/f;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, La7/f;

    const-string v1, "CAPTURED_TYPE_SCOPE"

    const/4 v2, 0x0

    const-string v3, "No member resolution should be done on captured type, it used only during constraint system resolution"

    invoke-direct {v0, v1, v2, v3}, La7/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La7/f;->b:La7/f;

    new-instance v1, La7/f;

    const-string v3, "INTEGER_LITERAL_TYPE_SCOPE"

    const/4 v4, 0x1

    const-string v5, "Scope for integer literal type (%s)"

    invoke-direct {v1, v3, v4, v5}, La7/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, La7/f;->c:La7/f;

    new-instance v3, La7/f;

    const-string v5, "ERASED_RECEIVER_TYPE_SCOPE"

    const/4 v6, 0x2

    const-string v7, "Error scope for erased receiver type"

    invoke-direct {v3, v5, v6, v7}, La7/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, La7/f;->d:La7/f;

    new-instance v5, La7/f;

    const-string v7, "SCOPE_FOR_ABBREVIATION_TYPE"

    const/4 v8, 0x3

    const-string v9, "Scope for abbreviation %s"

    invoke-direct {v5, v7, v8, v9}, La7/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, La7/f;->e:La7/f;

    new-instance v7, La7/f;

    const-string v9, "STUB_TYPE_SCOPE"

    const/4 v10, 0x4

    const-string v11, "Scope for stub type %s"

    invoke-direct {v7, v9, v10, v11}, La7/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, La7/f;->f:La7/f;

    new-instance v9, La7/f;

    const-string v11, "NON_CLASSIFIER_SUPER_TYPE_SCOPE"

    const/4 v12, 0x5

    const-string v13, "A scope for common supertype which is not a normal classifier"

    invoke-direct {v9, v11, v12, v13}, La7/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, La7/f;->g:La7/f;

    new-instance v11, La7/f;

    const-string v13, "ERROR_TYPE_SCOPE"

    const/4 v14, 0x6

    const-string v15, "Scope for error type %s"

    invoke-direct {v11, v13, v14, v15}, La7/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, La7/f;->h:La7/f;

    new-instance v13, La7/f;

    const-string v15, "UNSUPPORTED_TYPE_SCOPE"

    const/4 v14, 0x7

    const-string v12, "Scope for unsupported type %s"

    invoke-direct {v13, v15, v14, v12}, La7/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, La7/f;->i:La7/f;

    new-instance v12, La7/f;

    const-string v15, "SCOPE_FOR_ERROR_CLASS"

    const/16 v14, 0x8

    const-string v10, "Error scope for class %s with arguments: %s"

    invoke-direct {v12, v15, v14, v10}, La7/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, La7/f;->j:La7/f;

    new-instance v10, La7/f;

    const-string v15, "SCOPE_FOR_ERROR_RESOLUTION_CANDIDATE"

    const/16 v14, 0x9

    const-string v8, "Error resolution candidate for call %s"

    invoke-direct {v10, v15, v14, v8}, La7/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, La7/f;->k:La7/f;

    const/16 v8, 0xa

    new-array v8, v8, [La7/f;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    sput-object v8, La7/f;->l:[La7/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, La7/f;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La7/f;
    .registers 2

    const-class v0, La7/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La7/f;

    return-object p0
.end method

.method public static values()[La7/f;
    .registers 1

    sget-object v0, La7/f;->l:[La7/f;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La7/f;

    return-object v0
.end method
