.class public final Lf6/a$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf6/a$e$b;,
        Lf6/a$e$c;
    }
.end annotation


# static fields
.field public static final g:Lf6/a$e;

.field public static h:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lf6/a$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Li6/c;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf6/a$e$c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:B

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lf6/a$e$a;

    invoke-direct {v0}, Lf6/a$e$a;-><init>()V

    sput-object v0, Lf6/a$e;->h:Li6/r;

    new-instance v0, Lf6/a$e;

    invoke-direct {v0}, Lf6/a$e;-><init>()V

    sput-object v0, Lf6/a$e;->g:Lf6/a$e;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lf6/a$e;->b:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lf6/a$e;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lf6/a$e;->d:I

    iput-byte v0, p0, Lf6/a$e;->e:B

    iput v0, p0, Lf6/a$e;->f:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lf6/a$e;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;Lf6/a$a;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 p3, -0x1

    iput p3, p0, Lf6/a$e;->d:I

    iput-byte p3, p0, Lf6/a$e;->e:B

    iput p3, p0, Lf6/a$e;->f:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lf6/a$e;->b:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lf6/a$e;->c:Ljava/util/List;

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_21
    :goto_21
    const/4 v4, 0x2

    if-nez v2, :cond_e8

    :try_start_24
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v5

    if-eqz v5, :cond_a7

    const/16 v6, 0xa

    if-eq v5, v6, :cond_8d

    const/16 v6, 0x28

    if-eq v5, v6, :cond_72

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_3d

    invoke-virtual {p1, v5, v1}, Li6/d;->r(ILi6/e;)Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_a7

    :cond_3d
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v5

    invoke-virtual {p1, v5}, Li6/d;->d(I)I

    move-result v5

    and-int/lit8 v6, v3, 0x2

    if-eq v6, v4, :cond_58

    invoke-virtual {p1}, Li6/d;->b()I

    move-result v6

    if-lez v6, :cond_58

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lf6/a$e;->c:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    :cond_58
    :goto_58
    invoke-virtual {p1}, Li6/d;->b()I

    move-result v6

    if-lez v6, :cond_6c

    iget-object v6, p0, Lf6/a$e;->c:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_6c
    iput v5, p1, Li6/d;->i:I

    invoke-virtual {p1}, Li6/d;->p()V

    goto :goto_21

    :cond_72
    and-int/lit8 v5, v3, 0x2

    if-eq v5, v4, :cond_7f

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lf6/a$e;->c:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    :cond_7f
    iget-object v5, p0, Lf6/a$e;->c:Ljava/util/List;

    invoke-virtual {p1}, Li6/d;->l()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_8d
    and-int/lit8 v5, v3, 0x1

    if-eq v5, v0, :cond_9a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lf6/a$e;->b:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    :cond_9a
    iget-object v5, p0, Lf6/a$e;->b:Ljava/util/List;

    sget-object v6, Lf6/a$e$c;->n:Li6/r;

    invoke-virtual {p1, v6, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a5
    .catch Li6/j; {:try_start_24 .. :try_end_a5} :catch_b9
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_a5} :catch_ac
    .catchall {:try_start_24 .. :try_end_a5} :catchall_aa

    goto/16 :goto_21

    :cond_a7
    :goto_a7
    move v2, v0

    goto/16 :goto_21

    :catchall_aa
    move-exception p1

    goto :goto_bd

    :catch_ac
    move-exception p1

    :try_start_ad
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_b9
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_bd
    .catchall {:try_start_ad .. :try_end_bd} :catchall_aa

    :goto_bd
    and-int/lit8 p2, v3, 0x1

    if-ne p2, v0, :cond_c9

    iget-object p2, p0, Lf6/a$e;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf6/a$e;->b:Ljava/util/List;

    :cond_c9
    and-int/lit8 p2, v3, 0x2

    if-ne p2, v4, :cond_d5

    iget-object p2, p0, Lf6/a$e;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lf6/a$e;->c:Ljava/util/List;

    :cond_d5
    :try_start_d5
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_e1
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_d9

    goto :goto_e1

    :catchall_d9
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lf6/a$e;->a:Li6/c;

    throw p1

    :catch_e1
    :goto_e1
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lf6/a$e;->a:Li6/c;

    throw p1

    :cond_e8
    and-int/lit8 p1, v3, 0x1

    if-ne p1, v0, :cond_f4

    iget-object p1, p0, Lf6/a$e;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf6/a$e;->b:Ljava/util/List;

    :cond_f4
    and-int/lit8 p1, v3, 0x2

    if-ne p1, v4, :cond_100

    iget-object p1, p0, Lf6/a$e;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf6/a$e;->c:Ljava/util/List;

    :cond_100
    :try_start_100
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_103} :catch_10c
    .catchall {:try_start_100 .. :try_end_103} :catchall_104

    goto :goto_10c

    :catchall_104
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lf6/a$e;->a:Li6/c;

    throw p1

    :catch_10c
    :goto_10c
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lf6/a$e;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/h$b;Lf6/a$a;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h;-><init>(Li6/h$b;)V

    const/4 p2, -0x1

    iput p2, p0, Lf6/a$e;->d:I

    iput-byte p2, p0, Lf6/a$e;->e:B

    iput p2, p0, Lf6/a$e;->f:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lf6/a$e;->a:Li6/c;

    return-void
.end method


# virtual methods
.method public b(Li6/e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lf6/a$e;->getSerializedSize()I

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v2, p0, Lf6/a$e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Lf6/a$e;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li6/p;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1c
    iget-object v1, p0, Lf6/a$e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2e

    const/16 v1, 0x2a

    invoke-virtual {p1, v1}, Li6/e;->y(I)V

    iget v1, p0, Lf6/a$e;->d:I

    invoke-virtual {p1, v1}, Li6/e;->y(I)V

    :cond_2e
    :goto_2e
    iget-object v1, p0, Lf6/a$e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_48

    iget-object v1, p0, Lf6/a$e;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Li6/e;->q(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_48
    iget-object p0, p0, Lf6/a$e;->a:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getSerializedSize()I
    .registers 6

    iget v0, p0, Lf6/a$e;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_9
    iget-object v3, p0, Lf6/a$e;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_22

    iget-object v3, p0, Lf6/a$e;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/p;

    const/4 v4, 0x1

    invoke-static {v4, v3}, Li6/e;->e(ILi6/p;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_22
    move v1, v0

    :goto_23
    iget-object v3, p0, Lf6/a$e;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3f

    iget-object v3, p0, Lf6/a$e;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Li6/e;->d(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_3f
    add-int/2addr v2, v1

    iget-object v0, p0, Lf6/a$e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Li6/e;->d(I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4f
    iput v1, p0, Lf6/a$e;->d:I

    iget-object v0, p0, Lf6/a$e;->a:Li6/c;

    invoke-virtual {v0}, Li6/c;->size()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lf6/a$e;->f:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    iget-byte v0, p0, Lf6/a$e;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iput-byte v1, p0, Lf6/a$e;->e:B

    return v1
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lf6/a$e$b;

    invoke-direct {p0}, Lf6/a$e$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lf6/a$e$b;

    invoke-direct {v0}, Lf6/a$e$b;-><init>()V

    invoke-virtual {v0, p0}, Lf6/a$e$b;->g(Lf6/a$e;)Lf6/a$e$b;

    return-object v0
.end method
