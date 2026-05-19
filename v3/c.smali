.class public Lv3/c;
.super Lv3/a$b;
.source ""


# instance fields
.field public h:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:[Ljava/lang/reflect/Type;

.field public final synthetic j:Ljava/lang/reflect/Type;

.field public final synthetic k:Ljava/util/Set;

.field public final synthetic l:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/util/Set;)V
    .registers 12

    iput-object p8, p0, Lv3/c;->i:[Ljava/lang/reflect/Type;

    iput-object p9, p0, Lv3/c;->j:Ljava/lang/reflect/Type;

    iput-object p10, p0, Lv3/c;->k:Ljava/util/Set;

    iput-object p11, p0, Lv3/c;->l:Ljava/util/Set;

    invoke-direct/range {p0 .. p7}, Lv3/a$b;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ)V

    return-void
.end method


# virtual methods
.method public a(Lv3/e0;Lv3/r$a;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lv3/a$b;->a(Lv3/e0;Lv3/r$a;)V

    iget-object v0, p0, Lv3/c;->i:[Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lv3/c;->j:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lv3/i0;->b(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lv3/c;->k:Ljava/util/Set;

    iget-object v1, p0, Lv3/c;->l:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lv3/c;->j:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lv3/c;->l:Ljava/util/Set;

    invoke-virtual {p1, p2, v0, v1}, Lv3/e0;->e(Lv3/r$a;Ljava/lang/reflect/Type;Ljava/util/Set;)Lv3/r;

    move-result-object p1

    goto :goto_2b

    :cond_23
    iget-object p2, p0, Lv3/c;->j:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lv3/c;->l:Ljava/util/Set;

    invoke-virtual {p1, p2, v0}, Lv3/e0;->c(Ljava/lang/reflect/Type;Ljava/util/Set;)Lv3/r;

    move-result-object p1

    :goto_2b
    iput-object p1, p0, Lv3/c;->h:Lv3/r;

    return-void
.end method

.method public d(Lv3/e0;Lv3/b0;Ljava/lang/Object;)V
    .registers 4
    .param p3  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lv3/a$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lv3/c;->h:Lv3/r;

    invoke-virtual {p0, p2, p1}, Lv3/r;->c(Lv3/b0;Ljava/lang/Object;)V

    return-void
.end method
