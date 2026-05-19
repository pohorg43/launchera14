.class public final Lc6/f;
.super Li6/h;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/f$b;,
        Lc6/f$d;,
        Lc6/f$c;
    }
.end annotation


# static fields
.field public static final i:Lc6/f;

.field public static j:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Li6/c;

.field public b:I

.field public c:Lc6/f$c;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc6/h;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lc6/h;

.field public f:Lc6/f$d;

.field public g:B

.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lc6/f$a;

    invoke-direct {v0}, Lc6/f$a;-><init>()V

    sput-object v0, Lc6/f;->j:Li6/r;

    new-instance v0, Lc6/f;

    invoke-direct {v0}, Lc6/f;-><init>()V

    sput-object v0, Lc6/f;->i:Lc6/f;

    sget-object v1, Lc6/f$c;->b:Lc6/f$c;

    iput-object v1, v0, Lc6/f;->c:Lc6/f$c;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lc6/f;->d:Ljava/util/List;

    sget-object v1, Lc6/h;->l:Lc6/h;

    iput-object v1, v0, Lc6/f;->e:Lc6/h;

    sget-object v1, Lc6/f$d;->b:Lc6/f$d;

    iput-object v1, v0, Lc6/f;->f:Lc6/f$d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lc6/f;->g:B

    iput v0, p0, Lc6/f;->h:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/f;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;La4/c;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 p3, -0x1

    iput-byte p3, p0, Lc6/f;->g:B

    iput p3, p0, Lc6/f;->h:I

    sget-object p3, Lc6/f$c;->b:Lc6/f$c;

    iput-object p3, p0, Lc6/f;->c:Lc6/f$c;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lc6/f;->d:Ljava/util/List;

    sget-object p3, Lc6/h;->l:Lc6/h;

    iput-object p3, p0, Lc6/f;->e:Lc6/h;

    sget-object p3, Lc6/f$d;->b:Lc6/f$d;

    iput-object p3, p0, Lc6/f;->f:Lc6/f$d;

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_25
    :goto_25
    const/4 v4, 0x2

    if-nez v2, :cond_f9

    :try_start_28
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v5

    if-eqz v5, :cond_c4

    const/16 v6, 0x8

    if-eq v5, v6, :cond_a9

    const/16 v6, 0x12

    if-eq v5, v6, :cond_8f

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_60

    const/16 v6, 0x20

    if-eq v5, v6, :cond_46

    invoke-virtual {p1, v5, v1}, Li6/d;->r(ILi6/e;)Z

    move-result v4

    if-nez v4, :cond_25

    goto/16 :goto_c4

    :cond_46
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v6

    invoke-static {v6}, Lc6/f$d;->a(I)Lc6/f$d;

    move-result-object v7

    if-nez v7, :cond_57

    invoke-virtual {v1, v5}, Li6/e;->y(I)V

    invoke-virtual {v1, v6}, Li6/e;->y(I)V

    goto :goto_25

    :cond_57
    iget v5, p0, Lc6/f;->b:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lc6/f;->b:I

    iput-object v7, p0, Lc6/f;->f:Lc6/f$d;

    goto :goto_25

    :cond_60
    const/4 v5, 0x0

    iget v6, p0, Lc6/f;->b:I

    and-int/2addr v6, v4

    if-ne v6, v4, :cond_74

    iget-object v5, p0, Lc6/f;->e:Lc6/h;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lc6/h$b;

    invoke-direct {v6}, Lc6/h$b;-><init>()V

    invoke-virtual {v6, v5}, Lc6/h$b;->g(Lc6/h;)Lc6/h$b;

    move-object v5, v6

    :cond_74
    sget-object v6, Lc6/h;->m:Li6/r;

    invoke-virtual {p1, v6, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v6

    check-cast v6, Lc6/h;

    iput-object v6, p0, Lc6/f;->e:Lc6/h;

    if-eqz v5, :cond_89

    invoke-virtual {v5, v6}, Lc6/h$b;->g(Lc6/h;)Lc6/h$b;

    invoke-virtual {v5}, Lc6/h$b;->f()Lc6/h;

    move-result-object v5

    iput-object v5, p0, Lc6/f;->e:Lc6/h;

    :cond_89
    iget v5, p0, Lc6/f;->b:I

    or-int/2addr v5, v4

    iput v5, p0, Lc6/f;->b:I

    goto :goto_25

    :cond_8f
    and-int/lit8 v5, v3, 0x2

    if-eq v5, v4, :cond_9c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lc6/f;->d:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    :cond_9c
    iget-object v5, p0, Lc6/f;->d:Ljava/util/List;

    sget-object v6, Lc6/h;->m:Li6/r;

    invoke-virtual {p1, v6, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_25

    :cond_a9
    invoke-virtual {p1}, Li6/d;->l()I

    move-result v6

    invoke-static {v6}, Lc6/f$c;->a(I)Lc6/f$c;

    move-result-object v7

    if-nez v7, :cond_bb

    invoke-virtual {v1, v5}, Li6/e;->y(I)V

    invoke-virtual {v1, v6}, Li6/e;->y(I)V

    goto/16 :goto_25

    :cond_bb
    iget v5, p0, Lc6/f;->b:I

    or-int/2addr v5, v0

    iput v5, p0, Lc6/f;->b:I

    iput-object v7, p0, Lc6/f;->c:Lc6/f$c;
    :try_end_c2
    .catch Li6/j; {:try_start_28 .. :try_end_c2} :catch_d6
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_c2} :catch_c9
    .catchall {:try_start_28 .. :try_end_c2} :catchall_c7

    goto/16 :goto_25

    :cond_c4
    :goto_c4
    move v2, v0

    goto/16 :goto_25

    :catchall_c7
    move-exception p1

    goto :goto_da

    :catch_c9
    move-exception p1

    :try_start_ca
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_d6
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_da
    .catchall {:try_start_ca .. :try_end_da} :catchall_c7

    :goto_da
    and-int/lit8 p2, v3, 0x2

    if-ne p2, v4, :cond_e6

    iget-object p2, p0, Lc6/f;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/f;->d:Ljava/util/List;

    :cond_e6
    :try_start_e6
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_f2
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_ea

    goto :goto_f2

    :catchall_ea
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/f;->a:Li6/c;

    throw p1

    :catch_f2
    :goto_f2
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/f;->a:Li6/c;

    throw p1

    :cond_f9
    and-int/lit8 p1, v3, 0x2

    if-ne p1, v4, :cond_105

    iget-object p1, p0, Lc6/f;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/f;->d:Ljava/util/List;

    :cond_105
    :try_start_105
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_111
    .catchall {:try_start_105 .. :try_end_108} :catchall_109

    goto :goto_111

    :catchall_109
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/f;->a:Li6/c;

    throw p1

    :catch_111
    :goto_111
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/f;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/h$b;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h;-><init>(Li6/h$b;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/f;->g:B

    iput p2, p0, Lc6/f;->h:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/f;->a:Li6/c;

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

    invoke-virtual {p0}, Lc6/f;->getSerializedSize()I

    iget v0, p0, Lc6/f;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lc6/f;->c:Lc6/f$c;

    iget v0, v0, Lc6/f$c;->a:I

    invoke-virtual {p1, v1, v0}, Li6/e;->n(II)V

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget-object v1, p0, Lc6/f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_28

    iget-object v1, p0, Lc6/f;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li6/p;

    invoke-virtual {p1, v2, v1}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_28
    iget v0, p0, Lc6/f;->b:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_33

    const/4 v0, 0x3

    iget-object v1, p0, Lc6/f;->e:Lc6/h;

    invoke-virtual {p1, v0, v1}, Li6/e;->r(ILi6/p;)V

    :cond_33
    iget v0, p0, Lc6/f;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_40

    iget-object v0, p0, Lc6/f;->f:Lc6/f$d;

    iget v0, v0, Lc6/f$d;->a:I

    invoke-virtual {p1, v1, v0}, Li6/e;->n(II)V

    :cond_40
    iget-object p0, p0, Lc6/f;->a:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getSerializedSize()I
    .registers 5

    iget v0, p0, Lc6/f;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lc6/f;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lc6/f;->c:Lc6/f$c;

    iget v0, v0, Lc6/f$c;->a:I

    invoke-static {v1, v0}, Li6/e;->b(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    iget-object v1, p0, Lc6/f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v2, v1, :cond_31

    iget-object v1, p0, Lc6/f;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li6/p;

    invoke-static {v3, v1}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_31
    iget v1, p0, Lc6/f;->b:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3e

    const/4 v1, 0x3

    iget-object v2, p0, Lc6/f;->e:Lc6/h;

    invoke-static {v1, v2}, Li6/e;->e(ILi6/p;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3e
    iget v1, p0, Lc6/f;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4d

    iget-object v1, p0, Lc6/f;->f:Lc6/f$d;

    iget v1, v1, Lc6/f$d;->a:I

    invoke-static {v2, v1}, Li6/e;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4d
    iget-object v1, p0, Lc6/f;->a:Li6/c;

    invoke-virtual {v1}, Li6/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lc6/f;->h:I

    return v1
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lc6/f;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_a

    return v2

    :cond_a
    move v0, v2

    :goto_b
    iget-object v3, p0, Lc6/f;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_27

    iget-object v3, p0, Lc6/f;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/h;

    invoke-virtual {v3}, Lc6/h;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_24

    iput-byte v2, p0, Lc6/f;->g:B

    return v2

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_27
    iget v0, p0, Lc6/f;->b:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2f

    move v0, v1

    goto :goto_30

    :cond_2f
    move v0, v2

    :goto_30
    if-eqz v0, :cond_3d

    iget-object v0, p0, Lc6/f;->e:Lc6/h;

    invoke-virtual {v0}, Lc6/h;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3d

    iput-byte v2, p0, Lc6/f;->g:B

    return v2

    :cond_3d
    iput-byte v1, p0, Lc6/f;->g:B

    return v1
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/f$b;

    invoke-direct {p0}, Lc6/f$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/f$b;

    invoke-direct {v0}, Lc6/f$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/f$b;->g(Lc6/f;)Lc6/f$b;

    return-object v0
.end method
