.class public Lo6/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li7/b$c;


# static fields
.field public static final a:Lo6/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lo6/a;

    invoke-direct {v0}, Lo6/a;-><init>()V

    sput-object v0, Lo6/a;->a:Lo6/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 3

    check-cast p1, Li5/e1;

    sget p0, Lo6/c;->a:I

    invoke-interface {p1}, Li5/e1;->d()Ljava/util/Collection;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/e1;

    invoke-interface {v0}, Li5/e1;->a()Li5/e1;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2b
    return-object p1
.end method
