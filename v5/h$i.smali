.class public final Lv5/h$i;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/h;-><init>(Lu5/g;Li5/e;Ly5/g;ZLv5/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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

    iput-object p1, p0, Lv5/h$i;->a:Lv5/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lv5/h$i;->a:Lv5/h;

    iget-object p0, p0, Lv5/h;->o:Ly5/g;

    invoke-interface {p0}, Ly5/g;->w()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
