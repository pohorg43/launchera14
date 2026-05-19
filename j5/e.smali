.class public final enum Lj5/e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj5/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lj5/e;

.field public static final enum c:Lj5/e;

.field public static final enum d:Lj5/e;

.field public static final enum e:Lj5/e;

.field public static final enum f:Lj5/e;

.field public static final enum g:Lj5/e;

.field public static final enum h:Lj5/e;

.field public static final enum i:Lj5/e;

.field public static final enum j:Lj5/e;

.field public static final synthetic k:[Lj5/e;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lj5/e;

    const-string v1, "FIELD"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lj5/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lj5/e;->b:Lj5/e;

    new-instance v1, Lj5/e;

    const-string v4, "FILE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lj5/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lj5/e;->c:Lj5/e;

    new-instance v4, Lj5/e;

    const-string v6, "PROPERTY"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v3}, Lj5/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lj5/e;->d:Lj5/e;

    new-instance v6, Lj5/e;

    const-string v8, "PROPERTY_GETTER"

    const/4 v9, 0x3

    const-string v10, "get"

    invoke-direct {v6, v8, v9, v10}, Lj5/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lj5/e;->e:Lj5/e;

    new-instance v8, Lj5/e;

    const-string v10, "PROPERTY_SETTER"

    const/4 v11, 0x4

    const-string v12, "set"

    invoke-direct {v8, v10, v11, v12}, Lj5/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lj5/e;->f:Lj5/e;

    new-instance v10, Lj5/e;

    const-string v12, "RECEIVER"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v3}, Lj5/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lj5/e;->g:Lj5/e;

    new-instance v3, Lj5/e;

    const-string v12, "CONSTRUCTOR_PARAMETER"

    const/4 v14, 0x6

    const-string v15, "param"

    invoke-direct {v3, v12, v14, v15}, Lj5/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lj5/e;->h:Lj5/e;

    new-instance v12, Lj5/e;

    const-string v15, "SETTER_PARAMETER"

    const/4 v14, 0x7

    const-string v13, "setparam"

    invoke-direct {v12, v15, v14, v13}, Lj5/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lj5/e;->i:Lj5/e;

    new-instance v13, Lj5/e;

    const-string v15, "PROPERTY_DELEGATE_FIELD"

    const/16 v14, 0x8

    const-string v11, "delegate"

    invoke-direct {v13, v15, v14, v11}, Lj5/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lj5/e;->j:Lj5/e;

    const/16 v11, 0x9

    new-array v11, v11, [Lj5/e;

    aput-object v0, v11, v2

    aput-object v1, v11, v5

    aput-object v4, v11, v7

    aput-object v6, v11, v9

    const/4 v0, 0x4

    aput-object v8, v11, v0

    const/4 v0, 0x5

    aput-object v10, v11, v0

    const/4 v0, 0x6

    aput-object v3, v11, v0

    const/4 v0, 0x7

    aput-object v12, v11, v0

    aput-object v13, v11, v14

    sput-object v11, Lj5/e;->k:[Lj5/e;

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

    if-nez p3, :cond_d

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lg7/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_d
    iput-object p3, p0, Lj5/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj5/e;
    .registers 2

    const-class v0, Lj5/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj5/e;

    return-object p0
.end method

.method public static values()[Lj5/e;
    .registers 1

    sget-object v0, Lj5/e;->k:[Lj5/e;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj5/e;

    return-object v0
.end method
