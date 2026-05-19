.class public final enum Lb8/q;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb8/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lb8/q;

.field public static final enum f:Lb8/q;

.field public static final enum g:Lb8/q;

.field public static final enum h:Lb8/q;

.field public static final synthetic i:[Lb8/q;


# instance fields
.field public final a:B
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final b:B
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final c:C
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final d:C
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    const/4 v0, 0x4

    new-array v0, v0, [Lb8/q;

    new-instance v1, Lb8/q;

    const-string v2, "OBJ"

    const/4 v3, 0x0

    const/16 v4, 0x7b

    const/16 v5, 0x7d

    invoke-direct {v1, v2, v3, v4, v5}, Lb8/q;-><init>(Ljava/lang/String;ICC)V

    sput-object v1, Lb8/q;->e:Lb8/q;

    aput-object v1, v0, v3

    new-instance v1, Lb8/q;

    const-string v2, "LIST"

    const/4 v3, 0x1

    const/16 v6, 0x5b

    const/16 v7, 0x5d

    invoke-direct {v1, v2, v3, v6, v7}, Lb8/q;-><init>(Ljava/lang/String;ICC)V

    sput-object v1, Lb8/q;->f:Lb8/q;

    aput-object v1, v0, v3

    new-instance v1, Lb8/q;

    const-string v2, "MAP"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Lb8/q;-><init>(Ljava/lang/String;ICC)V

    sput-object v1, Lb8/q;->g:Lb8/q;

    aput-object v1, v0, v3

    new-instance v1, Lb8/q;

    const-string v2, "POLY_OBJ"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v6, v7}, Lb8/q;-><init>(Ljava/lang/String;ICC)V

    sput-object v1, Lb8/q;->h:Lb8/q;

    aput-object v1, v0, v3

    sput-object v0, Lb8/q;->i:[Lb8/q;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ICC)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CC)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-char p3, p0, Lb8/q;->c:C

    iput-char p4, p0, Lb8/q;->d:C

    invoke-static {p3}, Lb8/i;->a(C)B

    move-result p1

    iput-byte p1, p0, Lb8/q;->a:B

    invoke-static {p4}, Lb8/i;->a(C)B

    move-result p1

    iput-byte p1, p0, Lb8/q;->b:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb8/q;
    .registers 2

    const-class v0, Lb8/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb8/q;

    return-object p0
.end method

.method public static values()[Lb8/q;
    .registers 1

    sget-object v0, Lb8/q;->i:[Lb8/q;

    invoke-virtual {v0}, [Lb8/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb8/q;

    return-object v0
.end method
