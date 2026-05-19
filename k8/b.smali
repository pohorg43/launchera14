.class public final enum Lk8/b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk8/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lk8/b;

.field public static final enum c:Lk8/b;

.field public static final enum d:Lk8/b;

.field public static final enum e:Lk8/b;

.field public static final enum f:Lk8/b;

.field public static final enum g:Lk8/b;

.field public static final synthetic h:[Lk8/b;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lk8/b;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lk8/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk8/b;->b:Lk8/b;

    new-instance v1, Lk8/b;

    const-string v3, "PROTOCOL_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lk8/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lk8/b;->c:Lk8/b;

    new-instance v3, Lk8/b;

    const-string v5, "INTERNAL_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lk8/b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lk8/b;->d:Lk8/b;

    new-instance v5, Lk8/b;

    const-string v7, "FLOW_CONTROL_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lk8/b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lk8/b;->e:Lk8/b;

    new-instance v7, Lk8/b;

    const-string v9, "REFUSED_STREAM"

    const/4 v10, 0x4

    const/4 v11, 0x7

    invoke-direct {v7, v9, v10, v11}, Lk8/b;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lk8/b;->f:Lk8/b;

    new-instance v9, Lk8/b;

    const-string v12, "CANCEL"

    const/4 v13, 0x5

    const/16 v14, 0x8

    invoke-direct {v9, v12, v13, v14}, Lk8/b;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lk8/b;->g:Lk8/b;

    new-instance v12, Lk8/b;

    const-string v15, "COMPRESSION_ERROR"

    const/4 v13, 0x6

    const/16 v10, 0x9

    invoke-direct {v12, v15, v13, v10}, Lk8/b;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lk8/b;

    const-string v13, "CONNECT_ERROR"

    const/16 v8, 0xa

    invoke-direct {v15, v13, v11, v8}, Lk8/b;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lk8/b;

    const-string v11, "ENHANCE_YOUR_CALM"

    const/16 v6, 0xb

    invoke-direct {v13, v11, v14, v6}, Lk8/b;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lk8/b;

    const-string v14, "INADEQUATE_SECURITY"

    const/16 v4, 0xc

    invoke-direct {v11, v14, v10, v4}, Lk8/b;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lk8/b;

    const-string v14, "HTTP_1_1_REQUIRED"

    const/16 v10, 0xd

    invoke-direct {v4, v14, v8, v10}, Lk8/b;-><init>(Ljava/lang/String;II)V

    new-array v6, v6, [Lk8/b;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v12, v6, v0

    const/4 v0, 0x7

    aput-object v15, v6, v0

    const/16 v0, 0x8

    aput-object v13, v6, v0

    const/16 v0, 0x9

    aput-object v11, v6, v0

    aput-object v4, v6, v8

    sput-object v6, Lk8/b;->h:[Lk8/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lk8/b;->a:I

    return-void
.end method

.method public static a(I)Lk8/b;
    .registers 6

    invoke-static {}, Lk8/b;->values()[Lk8/b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    iget v4, v3, Lk8/b;->a:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lk8/b;
    .registers 2

    const-class v0, Lk8/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk8/b;

    return-object p0
.end method

.method public static values()[Lk8/b;
    .registers 1

    sget-object v0, Lk8/b;->h:[Lk8/b;

    invoke-virtual {v0}, [Lk8/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk8/b;

    return-object v0
.end method
