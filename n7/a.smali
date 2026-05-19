.class public final Ln7/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lr7/t;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 1

    const-string p0, "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used"

    return-object p0
.end method

.method public b(Ljava/util/List;)Lm7/b2;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lr7/t;",
            ">;)",
            "Lm7/b2;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    if-eqz p0, :cond_13

    new-instance p1, Ln7/d;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ln7/f;->a(Landroid/os/Looper;Z)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Ln7/d;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-object p1

    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The main looper is not available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()I
    .registers 1

    const p0, 0x3fffffff  # 1.9999999f

    return p0
.end method
