.class public final Lv5/i;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Set<",
        "+",
        "Lh6/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv5/h;


# direct methods
.method public constructor <init>(Lv5/h;)V
    .registers 2

    iput-object p1, p0, Lv5/i;->a:Lv5/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lv5/i;->a:Lv5/h;

    invoke-virtual {v0}, Lv5/l;->a()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lv5/i;->a:Lv5/h;

    invoke-virtual {p0}, Lv5/l;->d()Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
