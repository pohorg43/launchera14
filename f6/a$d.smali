.class public final Lf6/a$d;
.super Li6/h;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf6/a$d$b;
    }
.end annotation


# static fields
.field public static final j:Lf6/a$d;

.field public static k:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lf6/a$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Li6/c;

.field public b:I

.field public c:Lf6/a$b;

.field public d:Lf6/a$c;

.field public e:Lf6/a$c;

.field public f:Lf6/a$c;

.field public g:Lf6/a$c;

.field public h:B

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lf6/a$d$a;

    invoke-direct {v0}, Lf6/a$d$a;-><init>()V

    sput-object v0, Lf6/a$d;->k:Li6/r;

    new-instance v0, Lf6/a$d;

    invoke-direct {v0}, Lf6/a$d;-><init>()V

    sput-object v0, Lf6/a$d;->j:Lf6/a$d;

    sget-object v1, Lf6/a$b;->g:Lf6/a$b;

    iput-object v1, v0, Lf6/a$d;->c:Lf6/a$b;

    sget-object v1, Lf6/a$c;->g:Lf6/a$c;

    iput-object v1, v0, Lf6/a$d;->d:Lf6/a$c;

    iput-object v1, v0, Lf6/a$d;->e:Lf6/a$c;

    iput-object v1, v0, Lf6/a$d;->f:Lf6/a$c;

    iput-object v1, v0, Lf6/a$d;->g:Lf6/a$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lf6/a$d;->h:B

    iput v0, p0, Lf6/a$d;->i:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lf6/a$d;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;Lf6/a$a;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 p3, -0x1

    iput-byte p3, p0, Lf6/a$d;->h:B

    iput p3, p0, Lf6/a$d;->i:I

    sget-object p3, Lf6/a$b;->g:Lf6/a$b;

    iput-object p3, p0, Lf6/a$d;->c:Lf6/a$b;

    sget-object p3, Lf6/a$c;->g:Lf6/a$c;

    iput-object p3, p0, Lf6/a$d;->d:Lf6/a$c;

    iput-object p3, p0, Lf6/a$d;->e:Lf6/a$c;

    iput-object p3, p0, Lf6/a$d;->f:Lf6/a$c;

    iput-object p3, p0, Lf6/a$d;->g:Lf6/a$c;

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v1

    const/4 v2, 0x0

    :cond_20
    :goto_20
    if-nez v2, :cond_148

    :try_start_22
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v3

    if-eqz v3, :cond_11f

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v3, v4, :cond_f1

    const/16 v4, 0x12

    if-eq v3, v4, :cond_c6

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_9b

    const/16 v4, 0x22

    if-eq v3, v4, :cond_70

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_45

    invoke-virtual {p1, v3, v1}, Li6/d;->r(ILi6/e;)Z

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_11f

    :cond_45
    iget v3, p0, Lf6/a$d;->b:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_55

    iget-object v3, p0, Lf6/a$d;->g:Lf6/a$c;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lf6/a$c;->g(Lf6/a$c;)Lf6/a$c$b;

    move-result-object v5

    :cond_55
    sget-object v3, Lf6/a$c;->h:Li6/r;

    invoke-virtual {p1, v3, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v3

    check-cast v3, Lf6/a$c;

    iput-object v3, p0, Lf6/a$d;->g:Lf6/a$c;

    if-eqz v5, :cond_6a

    invoke-virtual {v5, v3}, Lf6/a$c$b;->g(Lf6/a$c;)Lf6/a$c$b;

    invoke-virtual {v5}, Lf6/a$c$b;->f()Lf6/a$c;

    move-result-object v3

    iput-object v3, p0, Lf6/a$d;->g:Lf6/a$c;

    :cond_6a
    iget v3, p0, Lf6/a$d;->b:I

    or-int/2addr v3, v4

    iput v3, p0, Lf6/a$d;->b:I

    goto :goto_20

    :cond_70
    iget v3, p0, Lf6/a$d;->b:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_80

    iget-object v3, p0, Lf6/a$d;->f:Lf6/a$c;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lf6/a$c;->g(Lf6/a$c;)Lf6/a$c$b;

    move-result-object v5

    :cond_80
    sget-object v3, Lf6/a$c;->h:Li6/r;

    invoke-virtual {p1, v3, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v3

    check-cast v3, Lf6/a$c;

    iput-object v3, p0, Lf6/a$d;->f:Lf6/a$c;

    if-eqz v5, :cond_95

    invoke-virtual {v5, v3}, Lf6/a$c$b;->g(Lf6/a$c;)Lf6/a$c$b;

    invoke-virtual {v5}, Lf6/a$c$b;->f()Lf6/a$c;

    move-result-object v3

    iput-object v3, p0, Lf6/a$d;->f:Lf6/a$c;

    :cond_95
    iget v3, p0, Lf6/a$d;->b:I

    or-int/2addr v3, v4

    iput v3, p0, Lf6/a$d;->b:I

    goto :goto_20

    :cond_9b
    iget v3, p0, Lf6/a$d;->b:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_aa

    iget-object v3, p0, Lf6/a$d;->e:Lf6/a$c;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lf6/a$c;->g(Lf6/a$c;)Lf6/a$c$b;

    move-result-object v5

    :cond_aa
    sget-object v3, Lf6/a$c;->h:Li6/r;

    invoke-virtual {p1, v3, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v3

    check-cast v3, Lf6/a$c;

    iput-object v3, p0, Lf6/a$d;->e:Lf6/a$c;

    if-eqz v5, :cond_bf

    invoke-virtual {v5, v3}, Lf6/a$c$b;->g(Lf6/a$c;)Lf6/a$c$b;

    invoke-virtual {v5}, Lf6/a$c$b;->f()Lf6/a$c;

    move-result-object v3

    iput-object v3, p0, Lf6/a$d;->e:Lf6/a$c;

    :cond_bf
    iget v3, p0, Lf6/a$d;->b:I

    or-int/2addr v3, v4

    iput v3, p0, Lf6/a$d;->b:I

    goto/16 :goto_20

    :cond_c6
    iget v3, p0, Lf6/a$d;->b:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_d5

    iget-object v3, p0, Lf6/a$d;->d:Lf6/a$c;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lf6/a$c;->g(Lf6/a$c;)Lf6/a$c$b;

    move-result-object v5

    :cond_d5
    sget-object v3, Lf6/a$c;->h:Li6/r;

    invoke-virtual {p1, v3, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v3

    check-cast v3, Lf6/a$c;

    iput-object v3, p0, Lf6/a$d;->d:Lf6/a$c;

    if-eqz v5, :cond_ea

    invoke-virtual {v5, v3}, Lf6/a$c$b;->g(Lf6/a$c;)Lf6/a$c$b;

    invoke-virtual {v5}, Lf6/a$c$b;->f()Lf6/a$c;

    move-result-object v3

    iput-object v3, p0, Lf6/a$d;->d:Lf6/a$c;

    :cond_ea
    iget v3, p0, Lf6/a$d;->b:I

    or-int/2addr v3, v4

    iput v3, p0, Lf6/a$d;->b:I

    goto/16 :goto_20

    :cond_f1
    iget v3, p0, Lf6/a$d;->b:I

    and-int/2addr v3, v0

    if-ne v3, v0, :cond_103

    iget-object v3, p0, Lf6/a$d;->c:Lf6/a$b;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lf6/a$b$b;

    invoke-direct {v5}, Lf6/a$b$b;-><init>()V

    invoke-virtual {v5, v3}, Lf6/a$b$b;->g(Lf6/a$b;)Lf6/a$b$b;

    :cond_103
    sget-object v3, Lf6/a$b;->h:Li6/r;

    invoke-virtual {p1, v3, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v3

    check-cast v3, Lf6/a$b;

    iput-object v3, p0, Lf6/a$d;->c:Lf6/a$b;

    if-eqz v5, :cond_118

    invoke-virtual {v5, v3}, Lf6/a$b$b;->g(Lf6/a$b;)Lf6/a$b$b;

    invoke-virtual {v5}, Lf6/a$b$b;->f()Lf6/a$b;

    move-result-object v3

    iput-object v3, p0, Lf6/a$d;->c:Lf6/a$b;

    :cond_118
    iget v3, p0, Lf6/a$d;->b:I

    or-int/2addr v3, v0

    iput v3, p0, Lf6/a$d;->b:I
    :try_end_11d
    .catch Li6/j; {:try_start_22 .. :try_end_11d} :catch_131
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_11d} :catch_124
    .catchall {:try_start_22 .. :try_end_11d} :catchall_122

    goto/16 :goto_20

    :cond_11f
    :goto_11f
    move v2, v0

    goto/16 :goto_20

    :catchall_122
    move-exception p1

    goto :goto_135

    :catch_124
    move-exception p1

    :try_start_125
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_131
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_135
    .catchall {:try_start_125 .. :try_end_135} :catchall_122

    :goto_135
    :try_start_135
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_138} :catch_141
    .catchall {:try_start_135 .. :try_end_138} :catchall_139

    goto :goto_141

    :catchall_139
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lf6/a$d;->a:Li6/c;

    throw p1

    :catch_141
    :goto_141
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lf6/a$d;->a:Li6/c;

    throw p1

    :cond_148
    :try_start_148
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_14b} :catch_154
    .catchall {:try_start_148 .. :try_end_14b} :catchall_14c

    goto :goto_154

    :catchall_14c
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lf6/a$d;->a:Li6/c;

    throw p1

    :catch_154
    :goto_154
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lf6/a$d;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/h$b;Lf6/a$a;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h;-><init>(Li6/h$b;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lf6/a$d;->h:B

    iput p2, p0, Lf6/a$d;->i:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lf6/a$d;->a:Li6/c;

    return-void
.end method


# virtual methods
.method public b(Li6/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lf6/a$d;->getSerializedSize()I

    iget v0, p0, Lf6/a$d;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lf6/a$d;->c:Lf6/a$b;

    invoke-virtual {p1, v1, v0}, Li6/e;->r(ILi6/p;)V

    :cond_e
    iget v0, p0, Lf6/a$d;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lf6/a$d;->d:Lf6/a$c;

    invoke-virtual {p1, v1, v0}, Li6/e;->r(ILi6/p;)V

    :cond_19
    iget v0, p0, Lf6/a$d;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_25

    const/4 v0, 0x3

    iget-object v2, p0, Lf6/a$d;->e:Lf6/a$c;

    invoke-virtual {p1, v0, v2}, Li6/e;->r(ILi6/p;)V

    :cond_25
    iget v0, p0, Lf6/a$d;->b:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_31

    iget-object v0, p0, Lf6/a$d;->f:Lf6/a$c;

    invoke-virtual {p1, v1, v0}, Li6/e;->r(ILi6/p;)V

    :cond_31
    iget v0, p0, Lf6/a$d;->b:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3e

    const/4 v0, 0x5

    iget-object v1, p0, Lf6/a$d;->g:Lf6/a$c;

    invoke-virtual {p1, v0, v1}, Li6/e;->r(ILi6/p;)V

    :cond_3e
    iget-object p0, p0, Lf6/a$d;->a:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public e()Z
    .registers 2

    iget p0, p0, Lf6/a$d;->b:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public f()Z
    .registers 2

    iget p0, p0, Lf6/a$d;->b:I

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public getSerializedSize()I
    .registers 5

    iget v0, p0, Lf6/a$d;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    iget v1, p0, Lf6/a$d;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    iget-object v1, p0, Lf6/a$d;->c:Lf6/a$b;

    invoke-static {v2, v1}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget v1, p0, Lf6/a$d;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_21

    iget-object v1, p0, Lf6/a$d;->d:Lf6/a$c;

    invoke-static {v2, v1}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    iget v1, p0, Lf6/a$d;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2f

    const/4 v1, 0x3

    iget-object v3, p0, Lf6/a$d;->e:Lf6/a$c;

    invoke-static {v1, v3}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2f
    iget v1, p0, Lf6/a$d;->b:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3d

    iget-object v1, p0, Lf6/a$d;->f:Lf6/a$c;

    invoke-static {v2, v1}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3d
    iget v1, p0, Lf6/a$d;->b:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4c

    const/4 v1, 0x5

    iget-object v2, p0, Lf6/a$d;->g:Lf6/a$c;

    invoke-static {v1, v2}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4c
    iget-object v1, p0, Lf6/a$d;->a:Li6/c;

    invoke-virtual {v1}, Li6/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lf6/a$d;->i:I

    return v1
.end method

.method public final isInitialized()Z
    .registers 3

    iget-byte v0, p0, Lf6/a$d;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iput-byte v1, p0, Lf6/a$d;->h:B

    return v1
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lf6/a$d$b;

    invoke-direct {p0}, Lf6/a$d$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lf6/a$d$b;

    invoke-direct {v0}, Lf6/a$d$b;-><init>()V

    invoke-virtual {v0, p0}, Lf6/a$d$b;->g(Lf6/a$d;)Lf6/a$d$b;

    return-object v0
.end method
