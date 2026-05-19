.class public final enum Ls8/i;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls8/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ls8/i;

.field public static final enum b:Ls8/i;

.field public static final enum c:Ls8/i;

.field public static final enum d:Ls8/i;

.field public static final enum e:Ls8/i;

.field public static final enum f:Ls8/i;

.field public static final enum g:Ls8/i;

.field public static final enum h:Ls8/i;

.field public static final enum i:Ls8/i;

.field public static final enum j:Ls8/i;

.field public static final enum k:Ls8/i;

.field public static final enum l:Ls8/i;

.field public static final enum m:Ls8/i;

.field public static final synthetic n:[Ls8/i;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Ls8/i;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls8/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ls8/i;->a:Ls8/i;

    new-instance v1, Ls8/i;

    const-string v3, "BLOCK_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ls8/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls8/i;->b:Ls8/i;

    new-instance v3, Ls8/i;

    const-string v5, "COMPRESSED_BLOCK_START"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ls8/i;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ls8/i;->c:Ls8/i;

    new-instance v5, Ls8/i;

    const-string v7, "MAIN_LOOP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ls8/i;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ls8/i;->d:Ls8/i;

    new-instance v7, Ls8/i;

    const-string v9, "READ_METADATA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ls8/i;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ls8/i;->e:Ls8/i;

    new-instance v9, Ls8/i;

    const-string v11, "COPY_UNCOMPRESSED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ls8/i;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ls8/i;->f:Ls8/i;

    new-instance v11, Ls8/i;

    const-string v13, "INSERT_LOOP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ls8/i;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ls8/i;->g:Ls8/i;

    new-instance v13, Ls8/i;

    const-string v15, "COPY_LOOP"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ls8/i;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ls8/i;->h:Ls8/i;

    new-instance v15, Ls8/i;

    const-string v14, "COPY_WRAP_BUFFER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Ls8/i;-><init>(Ljava/lang/String;I)V

    sput-object v15, Ls8/i;->i:Ls8/i;

    new-instance v14, Ls8/i;

    const-string v12, "TRANSFORM"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Ls8/i;-><init>(Ljava/lang/String;I)V

    sput-object v14, Ls8/i;->j:Ls8/i;

    new-instance v12, Ls8/i;

    const-string v10, "FINISHED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Ls8/i;-><init>(Ljava/lang/String;I)V

    sput-object v12, Ls8/i;->k:Ls8/i;

    new-instance v10, Ls8/i;

    const-string v8, "CLOSED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Ls8/i;-><init>(Ljava/lang/String;I)V

    sput-object v10, Ls8/i;->l:Ls8/i;

    new-instance v8, Ls8/i;

    const-string v6, "WRITE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Ls8/i;-><init>(Ljava/lang/String;I)V

    sput-object v8, Ls8/i;->m:Ls8/i;

    const/16 v6, 0xd

    new-array v6, v6, [Ls8/i;

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

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    sput-object v6, Ls8/i;->n:[Ls8/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls8/i;
    .registers 2

    const-class v0, Ls8/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls8/i;

    return-object p0
.end method

.method public static values()[Ls8/i;
    .registers 1

    sget-object v0, Ls8/i;->n:[Ls8/i;

    invoke-virtual {v0}, [Ls8/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls8/i;

    return-object v0
.end method
