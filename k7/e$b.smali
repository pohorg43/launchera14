.class public final Lk7/e$b;
.super Li4/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk7/e;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li4/a<",
        "Lk7/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lk7/e;


# direct methods
.method public constructor <init>(Lk7/e;)V
    .registers 2

    iput-object p1, p0, Lk7/e$b;->a:Lk7/e;

    invoke-direct {p0}, Li4/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_6

    :cond_4
    instance-of v0, p1, Lk7/d;

    :goto_6
    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lk7/d;

    invoke-super {p0, p1}, Li4/a;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getSize()I
    .registers 1

    iget-object p0, p0, Lk7/e$b;->a:Lk7/e;

    iget-object p0, p0, Lk7/e;->a:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lk7/d;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Li4/o;->d(Ljava/util/Collection;)Ly4/d;

    move-result-object v0

    invoke-static {v0}, Li4/v;->x(Ljava/lang/Iterable;)Lj7/h;

    move-result-object v0

    new-instance v1, Lk7/e$b$a;

    invoke-direct {v1, p0}, Lk7/e$b$a;-><init>(Lk7/e$b;)V

    invoke-static {v0, v1}, Lj7/p;->p(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    check-cast p0, Lj7/s;

    new-instance v0, Lj7/s$a;

    invoke-direct {v0, p0}, Lj7/s$a;-><init>(Lj7/s;)V

    return-object v0
.end method
