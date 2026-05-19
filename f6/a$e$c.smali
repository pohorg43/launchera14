.class public final Lf6/a$e$c;
.super Li6/h;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf6/a$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf6/a$e$c$b;,
        Lf6/a$e$c$c;
    }
.end annotation


# static fields
.field public static final m:Lf6/a$e$c;

.field public static n:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lf6/a$e$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Li6/c;

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/Object;

.field public f:Lf6/a$e$c$c;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public j:I

.field public k:B

.field public l:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lf6/a$e$c$a;

    invoke-direct {v0}, Lf6/a$e$c$a;-><init>()V

    sput-object v0, Lf6/a$e$c;->n:Li6/r;

    new-instance v0, Lf6/a$e$c;

    invoke-direct {v0}, Lf6/a$e$c;-><init>()V

    sput-object v0, Lf6/a$e$c;->m:Lf6/a$e$c;

    invoke-virtual {v0}, Lf6/a$e$c;->e()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lf6/a$e$c;->h:I

    iput v0, p0, Lf6/a$e$c;->j:I

    iput-byte v0, p0, Lf6/a$e$c;->k:B

    iput v0, p0, Lf6/a$e$c;->l:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lf6/a$e$c;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;Lf6/a$a;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, Lf6/a$e$c;->h:I

    iput p2, p0, Lf6/a$e$c;->j:I

    iput-byte p2, p0, Lf6/a$e$c;->k:B

    iput p2, p0, Lf6/a$e$c;->l:I

    invoke-virtual {p0}, Lf6/a$e$c;->e()V

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_1a
    :goto_1a
    const/16 v3, 0x20

    const/16 v4, 0x10

    if-nez v1, :cond_171

    :try_start_20
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v5

    if-eqz v5, :cond_130

    const/16 v6, 0x8

    if-eq v5, v6, :cond_123

    if-eq v5, v4, :cond_115

    const/16 v7, 0x18

    if-eq v5, v7, :cond_fa

    if-eq v5, v3, :cond_de

    const/16 v6, 0x22

    if-eq v5, v6, :cond_a8

    const/16 v6, 0x28

    if-eq v5, v6, :cond_8c

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_57

    const/16 v6, 0x32

    if-eq v5, v6, :cond_4a

    invoke-virtual {p1, v5, v0}, Li6/d;->r(ILi6/e;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_130

    :cond_4a
    invoke-virtual {p1}, Li6/d;->f()Li6/c;

    move-result-object v5

    iget v6, p0, Lf6/a$e$c;->b:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lf6/a$e$c;->b:I

    iput-object v5, p0, Lf6/a$e$c;->e:Ljava/lang/Object;

    goto :goto_1a

    :cond_57
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v5

    invoke-virtual {p1, v5}, Li6/d;->d(I)I

    move-result v5

    and-int/lit8 v6, v2, 0x20

    if-eq v6, v3, :cond_72

    invoke-virtual {p1}, Li6/d;->b()I

    move-result v6

    if-lez v6, :cond_72

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lf6/a$e$c;->i:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    :cond_72
    :goto_72
    invoke-virtual {p1}, Li6/d;->b()I

    move-result v6

    if-lez v6, :cond_86

    iget-object v6, p0, Lf6/a$e$c;->i:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_72

    :cond_86
    iput v5, p1, Li6/d;->i:I

    invoke-virtual {p1}, Li6/d;->p()V

    goto :goto_1a

    :cond_8c
    and-int/lit8 v5, v2, 0x20

    if-eq v5, v3, :cond_99

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lf6/a$e$c;->i:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    :cond_99
    iget-object v5, p0, Lf6/a$e$c;->i:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    :cond_a8
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v5

    invoke-virtual {p1, v5}, Li6/d;->d(I)I

    move-result v5

    and-int/lit8 v6, v2, 0x10

    if-eq v6, v4, :cond_c3

    invoke-virtual {p1}, Li6/d;->b()I

    move-result v6

    if-lez v6, :cond_c3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lf6/a$e$c;->g:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    :cond_c3
    :goto_c3
    invoke-virtual {p1}, Li6/d;->b()I

    move-result v6

    if-lez v6, :cond_d7

    iget-object v6, p0, Lf6/a$e$c;->g:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    :cond_d7
    iput v5, p1, Li6/d;->i:I

    invoke-virtual {p1}, Li6/d;->p()V

    goto/16 :goto_1a

    :cond_de
    and-int/lit8 v5, v2, 0x10

    if-eq v5, v4, :cond_eb

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lf6/a$e$c;->g:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    :cond_eb
    iget-object v5, p0, Lf6/a$e$c;->g:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    :cond_fa
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v7

    invoke-static {v7}, Lf6/a$e$c$c;->a(I)Lf6/a$e$c$c;

    move-result-object v8

    if-nez v8, :cond_10c

    invoke-virtual {v0, v5}, Li6/e;->y(I)V

    invoke-virtual {v0, v7}, Li6/e;->y(I)V

    goto/16 :goto_1a

    :cond_10c
    iget v5, p0, Lf6/a$e$c;->b:I

    or-int/2addr v5, v6

    iput v5, p0, Lf6/a$e$c;->b:I

    iput-object v8, p0, Lf6/a$e$c;->f:Lf6/a$e$c$c;

    goto/16 :goto_1a

    :cond_115
    iget v5, p0, Lf6/a$e$c;->b:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lf6/a$e$c;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v5

    iput v5, p0, Lf6/a$e$c;->d:I

    goto/16 :goto_1a

    :cond_123
    iget v5, p0, Lf6/a$e$c;->b:I

    or-int/2addr v5, p3

    iput v5, p0, Lf6/a$e$c;->b:I

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v5

    iput v5, p0, Lf6/a$e$c;->c:I
    :try_end_12e
    .catch Li6/j; {:try_start_20 .. :try_end_12e} :catch_142
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_12e} :catch_135
    .catchall {:try_start_20 .. :try_end_12e} :catchall_133

    goto/16 :goto_1a

    :cond_130
    :goto_130
    move v1, p3

    goto/16 :goto_1a

    :catchall_133
    move-exception p1

    goto :goto_146

    :catch_135
    move-exception p1

    :try_start_136
    new-instance p3, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p3, Li6/j;->a:Li6/p;

    throw p3

    :catch_142
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_146
    .catchall {:try_start_136 .. :try_end_146} :catchall_133

    :goto_146
    and-int/lit8 p3, v2, 0x10

    if-ne p3, v4, :cond_152

    iget-object p3, p0, Lf6/a$e$c;->g:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lf6/a$e$c;->g:Ljava/util/List;

    :cond_152
    and-int/lit8 p3, v2, 0x20

    if-ne p3, v3, :cond_15e

    iget-object p3, p0, Lf6/a$e$c;->i:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lf6/a$e$c;->i:Ljava/util/List;

    :cond_15e
    :try_start_15e
    invoke-virtual {v0}, Li6/e;->j()V
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_161} :catch_16a
    .catchall {:try_start_15e .. :try_end_161} :catchall_162

    goto :goto_16a

    :catchall_162
    move-exception p1

    invoke-virtual {p2}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lf6/a$e$c;->a:Li6/c;

    throw p1

    :catch_16a
    :goto_16a
    invoke-virtual {p2}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lf6/a$e$c;->a:Li6/c;

    throw p1

    :cond_171
    and-int/lit8 p1, v2, 0x10

    if-ne p1, v4, :cond_17d

    iget-object p1, p0, Lf6/a$e$c;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf6/a$e$c;->g:Ljava/util/List;

    :cond_17d
    and-int/lit8 p1, v2, 0x20

    if-ne p1, v3, :cond_189

    iget-object p1, p0, Lf6/a$e$c;->i:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf6/a$e$c;->i:Ljava/util/List;

    :cond_189
    :try_start_189
    invoke-virtual {v0}, Li6/e;->j()V
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_18c} :catch_195
    .catchall {:try_start_189 .. :try_end_18c} :catchall_18d

    goto :goto_195

    :catchall_18d
    move-exception p1

    invoke-virtual {p2}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lf6/a$e$c;->a:Li6/c;

    throw p1

    :catch_195
    :goto_195
    invoke-virtual {p2}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lf6/a$e$c;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/h$b;Lf6/a$a;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h;-><init>(Li6/h$b;)V

    const/4 p2, -0x1

    iput p2, p0, Lf6/a$e$c;->h:I

    iput p2, p0, Lf6/a$e$c;->j:I

    iput-byte p2, p0, Lf6/a$e$c;->k:B

    iput p2, p0, Lf6/a$e$c;->l:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lf6/a$e$c;->a:Li6/c;

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

    invoke-virtual {p0}, Lf6/a$e$c;->getSerializedSize()I

    iget v0, p0, Lf6/a$e$c;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    iget v0, p0, Lf6/a$e$c;->c:I

    invoke-virtual {p1, v1, v0}, Li6/e;->p(II)V

    :cond_e
    iget v0, p0, Lf6/a$e$c;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_19

    iget v0, p0, Lf6/a$e$c;->d:I

    invoke-virtual {p1, v1, v0}, Li6/e;->p(II)V

    :cond_19
    iget v0, p0, Lf6/a$e$c;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_28

    const/4 v0, 0x3

    iget-object v1, p0, Lf6/a$e$c;->f:Lf6/a$e$c$c;

    iget v1, v1, Lf6/a$e$c$c;->a:I

    invoke-virtual {p1, v0, v1}, Li6/e;->n(II)V

    :cond_28
    iget-object v0, p0, Lf6/a$e$c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3a

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Li6/e;->y(I)V

    iget v0, p0, Lf6/a$e$c;->h:I

    invoke-virtual {p1, v0}, Li6/e;->y(I)V

    :cond_3a
    const/4 v0, 0x0

    move v1, v0

    :goto_3c
    iget-object v2, p0, Lf6/a$e$c;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_56

    iget-object v2, p0, Lf6/a$e$c;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Li6/e;->q(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_56
    iget-object v1, p0, Lf6/a$e$c;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_68

    const/16 v1, 0x2a

    invoke-virtual {p1, v1}, Li6/e;->y(I)V

    iget v1, p0, Lf6/a$e$c;->j:I

    invoke-virtual {p1, v1}, Li6/e;->y(I)V

    :cond_68
    :goto_68
    iget-object v1, p0, Lf6/a$e$c;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_82

    iget-object v1, p0, Lf6/a$e$c;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Li6/e;->q(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    :cond_82
    iget v0, p0, Lf6/a$e$c;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a1

    iget-object v0, p0, Lf6/a$e$c;->e:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_97

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Li6/c;->d(Ljava/lang/String;)Li6/c;

    move-result-object v0

    iput-object v0, p0, Lf6/a$e$c;->e:Ljava/lang/Object;

    goto :goto_99

    :cond_97
    check-cast v0, Li6/c;

    :goto_99
    const/16 v1, 0x32

    invoke-virtual {p1, v1}, Li6/e;->y(I)V

    invoke-virtual {p1, v0}, Li6/e;->m(Li6/c;)V

    :cond_a1
    iget-object p0, p0, Lf6/a$e$c;->a:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public final e()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lf6/a$e$c;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lf6/a$e$c;->d:I

    const-string v0, ""

    iput-object v0, p0, Lf6/a$e$c;->e:Ljava/lang/Object;

    sget-object v0, Lf6/a$e$c$c;->b:Lf6/a$e$c$c;

    iput-object v0, p0, Lf6/a$e$c;->f:Lf6/a$e$c$c;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lf6/a$e$c;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lf6/a$e$c;->i:Ljava/util/List;

    return-void
.end method

.method public getSerializedSize()I
    .registers 6

    iget v0, p0, Lf6/a$e$c;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lf6/a$e$c;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    iget v0, p0, Lf6/a$e$c;->c:I

    invoke-static {v1, v0}, Li6/e;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    iget v1, p0, Lf6/a$e$c;->b:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_23

    iget v1, p0, Lf6/a$e$c;->d:I

    invoke-static {v3, v1}, Li6/e;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    iget v1, p0, Lf6/a$e$c;->b:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_34

    const/4 v1, 0x3

    iget-object v3, p0, Lf6/a$e$c;->f:Lf6/a$e$c$c;

    iget v3, v3, Lf6/a$e$c$c;->a:I

    invoke-static {v1, v3}, Li6/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_34
    move v1, v2

    move v3, v1

    :goto_36
    iget-object v4, p0, Lf6/a$e$c;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_52

    iget-object v4, p0, Lf6/a$e$c;->g:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Li6/e;->d(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_52
    add-int/2addr v0, v3

    iget-object v1, p0, Lf6/a$e$c;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_62

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3}, Li6/e;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_62
    iput v3, p0, Lf6/a$e$c;->h:I

    move v1, v2

    :goto_65
    iget-object v3, p0, Lf6/a$e$c;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_81

    iget-object v3, p0, Lf6/a$e$c;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Li6/e;->d(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    :cond_81
    add-int/2addr v0, v1

    iget-object v2, p0, Lf6/a$e$c;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_91

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1}, Li6/e;->d(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_91
    iput v1, p0, Lf6/a$e$c;->j:I

    iget v1, p0, Lf6/a$e$c;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b5

    const/4 v1, 0x6

    iget-object v2, p0, Lf6/a$e$c;->e:Ljava/lang/Object;

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_a9

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Li6/c;->d(Ljava/lang/String;)Li6/c;

    move-result-object v2

    iput-object v2, p0, Lf6/a$e$c;->e:Ljava/lang/Object;

    goto :goto_ab

    :cond_a9
    check-cast v2, Li6/c;

    :goto_ab
    invoke-static {v1}, Li6/e;->i(I)I

    move-result v1

    invoke-static {v2}, Li6/e;->a(Li6/c;)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_b5
    iget-object v1, p0, Lf6/a$e$c;->a:Li6/c;

    invoke-virtual {v1}, Li6/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lf6/a$e$c;->l:I

    return v1
.end method

.method public final isInitialized()Z
    .registers 3

    iget-byte v0, p0, Lf6/a$e$c;->k:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iput-byte v1, p0, Lf6/a$e$c;->k:B

    return v1
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lf6/a$e$c$b;

    invoke-direct {p0}, Lf6/a$e$c$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lf6/a$e$c$b;

    invoke-direct {v0}, Lf6/a$e$c$b;-><init>()V

    invoke-virtual {v0, p0}, Lf6/a$e$c$b;->g(Lf6/a$e$c;)Lf6/a$e$c$b;

    return-object v0
.end method
