.class public enum Li6/y;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li6/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Li6/y;

.field public static final enum d:Li6/y;

.field public static final enum e:Li6/y;

.field public static final enum f:Li6/y;

.field public static final enum g:Li6/y;

.field public static final enum h:Li6/y;

.field public static final enum i:Li6/y;

.field public static final enum j:Li6/y;

.field public static final enum k:Li6/y;

.field public static final enum l:Li6/y;

.field public static final enum m:Li6/y;

.field public static final enum n:Li6/y;

.field public static final enum o:Li6/y;

.field public static final enum p:Li6/y;

.field public static final enum q:Li6/y;

.field public static final enum r:Li6/y;

.field public static final enum s:Li6/y;

.field public static final enum t:Li6/y;

.field public static final synthetic u:[Li6/y;


# instance fields
.field public final a:Li6/z;

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .registers 22

    new-instance v0, Li6/y;

    sget-object v1, Li6/z;->e:Li6/z;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Li6/y;-><init>(Ljava/lang/String;ILi6/z;I)V

    sput-object v0, Li6/y;->c:Li6/y;

    new-instance v1, Li6/y;

    sget-object v2, Li6/z;->d:Li6/z;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Li6/y;-><init>(Ljava/lang/String;ILi6/z;I)V

    sput-object v1, Li6/y;->d:Li6/y;

    new-instance v2, Li6/y;

    sget-object v5, Li6/z;->c:Li6/z;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Li6/y;-><init>(Ljava/lang/String;ILi6/z;I)V

    sput-object v2, Li6/y;->e:Li6/y;

    new-instance v7, Li6/y;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v5, v3}, Li6/y;-><init>(Ljava/lang/String;ILi6/z;I)V

    sput-object v7, Li6/y;->f:Li6/y;

    new-instance v9, Li6/y;

    sget-object v11, Li6/z;->b:Li6/z;

    const-string v12, "INT32"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v11, v3}, Li6/y;-><init>(Ljava/lang/String;ILi6/z;I)V

    sput-object v9, Li6/y;->g:Li6/y;

    new-instance v12, Li6/y;

    const-string v14, "FIXED64"

    invoke-direct {v12, v14, v6, v5, v4}, Li6/y;-><init>(Ljava/lang/String;ILi6/z;I)V

    sput-object v12, Li6/y;->h:Li6/y;

    new-instance v14, Li6/y;

    const-string v15, "FIXED32"

    const/4 v13, 0x6

    invoke-direct {v14, v15, v13, v11, v6}, Li6/y;-><init>(Ljava/lang/String;ILi6/z;I)V

    sput-object v14, Li6/y;->i:Li6/y;

    new-instance v15, Li6/y;

    sget-object v13, Li6/z;->f:Li6/z;

    const-string v4, "BOOL"

    const/4 v6, 0x7

    invoke-direct {v15, v4, v6, v13, v3}, Li6/y;-><init>(Ljava/lang/String;ILi6/z;I)V

    sput-object v15, Li6/y;->j:Li6/y;

    new-instance v4, Li6/y$a;

    sget-object v13, Li6/z;->g:Li6/z;

    const-string v6, "STRING"

    const/16 v3, 0x8

    invoke-direct {v4, v6, v3, v13, v8}, Li6/y$a;-><init>(Ljava/lang/String;ILi6/z;I)V

    sput-object v4, Li6/y;->k:Li6/y;

    new-instance v6, Li6/y$b;

    sget-object v13, Li6/z;->j:Li6/z;

    const-string v3, "GROUP"

    const/16 v8, 0x9

    invoke-direct {v6, v3, v8, v13, v10}, Li6/y$b;-><init>(Ljava/lang/String;ILi6/z;I)V

    sput-object v6, Li6/y;->l:Li6/y;

    new-instance v3, Li6/y$c;

    const-string v8, "MESSAGE"

    const/16 v10, 0xa

    move-object/from16 v16, v6

    const/4 v6, 0x2

    invoke-direct {v3, v8, v10, v13, v6}, Li6/y$c;-><init>(Ljava/lang/String;ILi6/z;I)V

    sput-object v3, Li6/y;->m:Li6/y;

    new-instance v8, Li6/y$d;

    sget-object v13, Li6/z;->h:Li6/z;

    const-string v10, "BYTES"

    move-object/from16 v17, v3

    const/16 v3, 0xb

    invoke-direct {v8, v10, v3, v13, v6}, Li6/y$d;-><init>(Ljava/lang/String;ILi6/z;I)V

    sput-object v8, Li6/y;->n:Li6/y;

    new-instance v6, Li6/y;

    const-string v10, "UINT32"

    const/16 v13, 0xc

    const/4 v3, 0x0

    invoke-direct {v6, v10, v13, v11, v3}, Li6/y;-><init>(Ljava/lang/String;ILi6/z;I)V

    sput-object v6, Li6/y;->o:Li6/y;

    new-instance v10, Li6/y;

    sget-object v13, Li6/z;->i:Li6/z;

    move-object/from16 v18, v6

    const-string v6, "ENUM"

    move-object/from16 v19, v8

    const/16 v8, 0xd

    invoke-direct {v10, v6, v8, v13, v3}, Li6/y;-><init>(Ljava/lang/String;ILi6/z;I)V

    sput-object v10, Li6/y;->p:Li6/y;

    new-instance v3, Li6/y;

    const-string v6, "SFIXED32"

    const/16 v13, 0xe

    const/4 v8, 0x5

    invoke-direct {v3, v6, v13, v11, v8}, Li6/y;-><init>(Ljava/lang/String;ILi6/z;I)V

    sput-object v3, Li6/y;->q:Li6/y;

    new-instance v6, Li6/y;

    const-string v8, "SFIXED64"

    const/16 v13, 0xf

    move-object/from16 v20, v3

    const/4 v3, 0x1

    invoke-direct {v6, v8, v13, v5, v3}, Li6/y;-><init>(Ljava/lang/String;ILi6/z;I)V

    sput-object v6, Li6/y;->r:Li6/y;

    new-instance v3, Li6/y;

    const-string v8, "SINT32"

    const/16 v13, 0x10

    move-object/from16 v21, v6

    const/4 v6, 0x0

    invoke-direct {v3, v8, v13, v11, v6}, Li6/y;-><init>(Ljava/lang/String;ILi6/z;I)V

    sput-object v3, Li6/y;->s:Li6/y;

    new-instance v8, Li6/y;

    const-string v11, "SINT64"

    const/16 v13, 0x11

    invoke-direct {v8, v11, v13, v5, v6}, Li6/y;-><init>(Ljava/lang/String;ILi6/z;I)V

    sput-object v8, Li6/y;->t:Li6/y;

    const/16 v5, 0x12

    new-array v5, v5, [Li6/y;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v7, v5, v0

    const/4 v0, 0x4

    aput-object v9, v5, v0

    const/4 v0, 0x5

    aput-object v12, v5, v0

    const/4 v0, 0x6

    aput-object v14, v5, v0

    const/4 v0, 0x7

    aput-object v15, v5, v0

    const/16 v0, 0x8

    aput-object v4, v5, v0

    const/16 v0, 0x9

    aput-object v16, v5, v0

    const/16 v0, 0xa

    aput-object v17, v5, v0

    const/16 v0, 0xb

    aput-object v19, v5, v0

    const/16 v0, 0xc

    aput-object v18, v5, v0

    const/16 v0, 0xd

    aput-object v10, v5, v0

    const/16 v0, 0xe

    aput-object v20, v5, v0

    const/16 v0, 0xf

    aput-object v21, v5, v0

    const/16 v0, 0x10

    aput-object v3, v5, v0

    aput-object v8, v5, v13

    sput-object v5, Li6/y;->u:[Li6/y;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILi6/z;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/z;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Li6/y;->a:Li6/z;

    iput p4, p0, Li6/y;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILi6/z;ILi6/x;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Li6/y;->a:Li6/z;

    iput p4, p0, Li6/y;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li6/y;
    .registers 2

    const-class v0, Li6/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li6/y;

    return-object p0
.end method

.method public static values()[Li6/y;
    .registers 1

    sget-object v0, Li6/y;->u:[Li6/y;

    invoke-virtual {v0}, [Li6/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li6/y;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 1

    instance-of p0, p0, Li6/y$a;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
