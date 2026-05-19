.class public final Lc6/o;
.super Li6/h;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/o$b;,
        Lc6/o$c;
    }
.end annotation


# static fields
.field public static final e:Lc6/o;

.field public static f:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/o;",
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
            "Lc6/o$c;",
            ">;"
        }
    .end annotation
.end field

.field public c:B

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lc6/o$a;

    invoke-direct {v0}, Lc6/o$a;-><init>()V

    sput-object v0, Lc6/o;->f:Li6/r;

    new-instance v0, Lc6/o;

    invoke-direct {v0}, Lc6/o;-><init>()V

    sput-object v0, Lc6/o;->e:Lc6/o;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lc6/o;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lc6/o;->c:B

    iput v0, p0, Lc6/o;->d:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/o;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;La4/c;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 p3, -0x1

    iput-byte p3, p0, Lc6/o;->c:B

    iput p3, p0, Lc6/o;->d:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lc6/o;->b:Ljava/util/List;

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_19
    :goto_19
    if-nez v2, :cond_79

    :try_start_1b
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v4

    if-eqz v4, :cond_45

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2c

    invoke-virtual {p1, v4, v1}, Li6/d;->r(ILi6/e;)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_45

    :cond_2c
    and-int/lit8 v4, v3, 0x1

    if-eq v4, v0, :cond_39

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lc6/o;->b:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    :cond_39
    iget-object v4, p0, Lc6/o;->b:Ljava/util/List;

    sget-object v5, Lc6/o$c;->i:Li6/r;

    invoke-virtual {p1, v5, p2}, Li6/d;->h(Li6/r;Li6/f;)Li6/p;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Li6/j; {:try_start_1b .. :try_end_44} :catch_56
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_44} :catch_49
    .catchall {:try_start_1b .. :try_end_44} :catchall_47

    goto :goto_19

    :cond_45
    :goto_45
    move v2, v0

    goto :goto_19

    :catchall_47
    move-exception p1

    goto :goto_5a

    :catch_49
    move-exception p1

    :try_start_4a
    new-instance p2, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Li6/j;->a:Li6/p;

    throw p2

    :catch_56
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_5a
    .catchall {:try_start_4a .. :try_end_5a} :catchall_47

    :goto_5a
    and-int/lit8 p2, v3, 0x1

    if-ne p2, v0, :cond_66

    iget-object p2, p0, Lc6/o;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lc6/o;->b:Ljava/util/List;

    :cond_66
    :try_start_66
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_72
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_72

    :catchall_6a
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/o;->a:Li6/c;

    throw p1

    :catch_72
    :goto_72
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/o;->a:Li6/c;

    throw p1

    :cond_79
    and-int/lit8 p1, v3, 0x1

    if-ne p1, v0, :cond_85

    iget-object p1, p0, Lc6/o;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc6/o;->b:Ljava/util/List;

    :cond_85
    :try_start_85
    invoke-virtual {v1}, Li6/e;->j()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_91
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_91

    :catchall_89
    move-exception p1

    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/o;->a:Li6/c;

    throw p1

    :catch_91
    :goto_91
    invoke-virtual {p3}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/o;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/h$b;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h;-><init>(Li6/h$b;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/o;->c:B

    iput p2, p0, Lc6/o;->d:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/o;->a:Li6/c;

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

    invoke-virtual {p0}, Lc6/o;->getSerializedSize()I

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lc6/o;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Lc6/o;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li6/p;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Li6/e;->r(ILi6/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1b
    iget-object p0, p0, Lc6/o;->a:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getSerializedSize()I
    .registers 5

    iget v0, p0, Lc6/o;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    iget-object v2, p0, Lc6/o;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    iget-object v2, p0, Lc6/o;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li6/p;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Li6/e;->e(ILi6/p;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_21
    iget-object v0, p0, Lc6/o;->a:Li6/c;

    invoke-virtual {v0}, Li6/c;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lc6/o;->d:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lc6/o;->c:B

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
    iget-object v3, p0, Lc6/o;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_27

    iget-object v3, p0, Lc6/o;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6/o$c;

    invoke-virtual {v3}, Lc6/o$c;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_24

    iput-byte v2, p0, Lc6/o;->c:B

    return v2

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_27
    iput-byte v1, p0, Lc6/o;->c:B

    return v1
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/o$b;

    invoke-direct {p0}, Lc6/o$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/o$b;

    invoke-direct {v0}, Lc6/o$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/o$b;->g(Lc6/o;)Lc6/o$b;

    return-object v0
.end method
