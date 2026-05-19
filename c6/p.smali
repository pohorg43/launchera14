.class public final Lc6/p;
.super Li6/h;
.source ""

# interfaces
.implements Li6/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/p$b;
    }
.end annotation


# static fields
.field public static final e:Lc6/p;

.field public static f:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "Lc6/p;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Li6/c;

.field public b:Li6/n;

.field public c:B

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lc6/p$a;

    invoke-direct {v0}, Lc6/p$a;-><init>()V

    sput-object v0, Lc6/p;->f:Li6/r;

    new-instance v0, Lc6/p;

    invoke-direct {v0}, Lc6/p;-><init>()V

    sput-object v0, Lc6/p;->e:Lc6/p;

    sget-object v1, Li6/m;->b:Li6/n;

    iput-object v1, v0, Lc6/p;->b:Li6/n;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lc6/p;->c:B

    iput v0, p0, Lc6/p;->d:I

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Lc6/p;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/d;Li6/f;La4/c;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    invoke-direct {p0}, Li6/h;-><init>()V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/p;->c:B

    iput p2, p0, Lc6/p;->d:I

    sget-object p2, Li6/m;->b:Li6/n;

    iput-object p2, p0, Lc6/p;->b:Li6/n;

    invoke-static {}, Li6/c;->m()Li6/c$b;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Li6/e;->k(Ljava/io/OutputStream;I)Li6/e;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_17
    :goto_17
    if-nez v1, :cond_75

    :try_start_19
    invoke-virtual {p1}, Li6/d;->o()I

    move-result v3

    if-eqz v3, :cond_41

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2a

    invoke-virtual {p1, v3, v0}, Li6/d;->r(ILi6/e;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_41

    :cond_2a
    invoke-virtual {p1}, Li6/d;->f()Li6/c;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-eq v4, p3, :cond_3b

    new-instance v4, Li6/m;

    invoke-direct {v4}, Li6/m;-><init>()V

    iput-object v4, p0, Lc6/p;->b:Li6/n;

    or-int/lit8 v2, v2, 0x1

    :cond_3b
    iget-object v4, p0, Lc6/p;->b:Li6/n;

    invoke-interface {v4, v3}, Li6/n;->b(Li6/c;)V
    :try_end_40
    .catch Li6/j; {:try_start_19 .. :try_end_40} :catch_52
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_40} :catch_45
    .catchall {:try_start_19 .. :try_end_40} :catchall_43

    goto :goto_17

    :cond_41
    :goto_41
    move v1, p3

    goto :goto_17

    :catchall_43
    move-exception p1

    goto :goto_56

    :catch_45
    move-exception p1

    :try_start_46
    new-instance v1, Li6/j;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    iput-object p0, v1, Li6/j;->a:Li6/p;

    throw v1

    :catch_52
    move-exception p1

    iput-object p0, p1, Li6/j;->a:Li6/p;

    throw p1
    :try_end_56
    .catchall {:try_start_46 .. :try_end_56} :catchall_43

    :goto_56
    and-int/lit8 v1, v2, 0x1

    if-ne v1, p3, :cond_62

    iget-object p3, p0, Lc6/p;->b:Li6/n;

    invoke-interface {p3}, Li6/n;->getUnmodifiableView()Li6/n;

    move-result-object p3

    iput-object p3, p0, Lc6/p;->b:Li6/n;

    :cond_62
    :try_start_62
    invoke-virtual {v0}, Li6/e;->j()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_6e
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6e

    :catchall_66
    move-exception p1

    invoke-virtual {p2}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/p;->a:Li6/c;

    throw p1

    :catch_6e
    :goto_6e
    invoke-virtual {p2}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/p;->a:Li6/c;

    throw p1

    :cond_75
    and-int/lit8 p1, v2, 0x1

    if-ne p1, p3, :cond_81

    iget-object p1, p0, Lc6/p;->b:Li6/n;

    invoke-interface {p1}, Li6/n;->getUnmodifiableView()Li6/n;

    move-result-object p1

    iput-object p1, p0, Lc6/p;->b:Li6/n;

    :cond_81
    :try_start_81
    invoke-virtual {v0}, Li6/e;->j()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_8d
    .catchall {:try_start_81 .. :try_end_84} :catchall_85

    goto :goto_8d

    :catchall_85
    move-exception p1

    invoke-virtual {p2}, Li6/c$b;->c()Li6/c;

    move-result-object p2

    iput-object p2, p0, Lc6/p;->a:Li6/c;

    throw p1

    :catch_8d
    :goto_8d
    invoke-virtual {p2}, Li6/c$b;->c()Li6/c;

    move-result-object p1

    iput-object p1, p0, Lc6/p;->a:Li6/c;

    return-void
.end method

.method public constructor <init>(Li6/h$b;La4/c;)V
    .registers 3

    invoke-direct {p0, p1}, Li6/h;-><init>(Li6/h$b;)V

    const/4 p2, -0x1

    iput-byte p2, p0, Lc6/p;->c:B

    iput p2, p0, Lc6/p;->d:I

    iget-object p1, p1, Li6/h$b;->a:Li6/c;

    iput-object p1, p0, Lc6/p;->a:Li6/c;

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

    invoke-virtual {p0}, Lc6/p;->getSerializedSize()I

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lc6/p;->b:Li6/n;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lc6/p;->b:Li6/n;

    invoke-interface {v1, v0}, Li6/n;->getByteString(I)Li6/c;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Li6/e;->y(I)V

    invoke-virtual {p1, v1}, Li6/e;->m(Li6/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1d
    iget-object p0, p0, Lc6/p;->a:Li6/c;

    invoke-virtual {p1, p0}, Li6/e;->u(Li6/c;)V

    return-void
.end method

.method public getSerializedSize()I
    .registers 5

    iget v0, p0, Lc6/p;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_9
    iget-object v3, p0, Lc6/p;->b:Li6/n;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1f

    iget-object v3, p0, Lc6/p;->b:Li6/n;

    invoke-interface {v3, v1}, Li6/n;->getByteString(I)Li6/c;

    move-result-object v3

    invoke-static {v3}, Li6/e;->a(Li6/c;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1f
    add-int/2addr v0, v2

    iget-object v1, p0, Lc6/p;->b:Li6/n;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    iget-object v0, p0, Lc6/p;->a:Li6/c;

    invoke-virtual {v0}, Li6/c;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lc6/p;->d:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    iget-byte v0, p0, Lc6/p;->c:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iput-byte v1, p0, Lc6/p;->c:B

    return v1
.end method

.method public newBuilderForType()Li6/p$a;
    .registers 1

    new-instance p0, Lc6/p$b;

    invoke-direct {p0}, Lc6/p$b;-><init>()V

    return-object p0
.end method

.method public toBuilder()Li6/p$a;
    .registers 2

    new-instance v0, Lc6/p$b;

    invoke-direct {v0}, Lc6/p$b;-><init>()V

    invoke-virtual {v0, p0}, Lc6/p$b;->g(Lc6/p;)Lc6/p$b;

    return-object v0
.end method
