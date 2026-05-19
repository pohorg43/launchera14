.class public final enum Lc6/b$c;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Li6/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc6/b$c;",
        ">;",
        "Li6/i$a;"
    }
.end annotation


# static fields
.field public static final enum b:Lc6/b$c;

.field public static final enum c:Lc6/b$c;

.field public static final enum d:Lc6/b$c;

.field public static final enum e:Lc6/b$c;

.field public static final enum f:Lc6/b$c;

.field public static final enum g:Lc6/b$c;

.field public static final enum h:Lc6/b$c;

.field public static final synthetic i:[Lc6/b$c;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 15

    new-instance v0, Lc6/b$c;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lc6/b$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc6/b$c;->b:Lc6/b$c;

    new-instance v1, Lc6/b$c;

    const-string v3, "INTERFACE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lc6/b$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lc6/b$c;->c:Lc6/b$c;

    new-instance v3, Lc6/b$c;

    const-string v5, "ENUM_CLASS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lc6/b$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lc6/b$c;->d:Lc6/b$c;

    new-instance v5, Lc6/b$c;

    const-string v7, "ENUM_ENTRY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lc6/b$c;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lc6/b$c;->e:Lc6/b$c;

    new-instance v7, Lc6/b$c;

    const-string v9, "ANNOTATION_CLASS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lc6/b$c;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lc6/b$c;->f:Lc6/b$c;

    new-instance v9, Lc6/b$c;

    const-string v11, "OBJECT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lc6/b$c;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lc6/b$c;->g:Lc6/b$c;

    new-instance v11, Lc6/b$c;

    const-string v13, "COMPANION_OBJECT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lc6/b$c;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lc6/b$c;->h:Lc6/b$c;

    const/4 v13, 0x7

    new-array v13, v13, [Lc6/b$c;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lc6/b$c;->i:[Lc6/b$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lc6/b$c;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc6/b$c;
    .registers 2

    const-class v0, Lc6/b$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc6/b$c;

    return-object p0
.end method

.method public static values()[Lc6/b$c;
    .registers 1

    sget-object v0, Lc6/b$c;->i:[Lc6/b$c;

    invoke-virtual {v0}, [Lc6/b$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc6/b$c;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 1

    iget p0, p0, Lc6/b$c;->a:I

    return p0
.end method
