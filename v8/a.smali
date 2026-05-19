.class public final synthetic Lv8/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/content/ObserverWrapper;


# instance fields
.field public final synthetic a:Lpantanal/content/GadgetObserver;


# direct methods
.method public synthetic constructor <init>(Lpantanal/content/GadgetObserver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv8/a;->a:Lpantanal/content/GadgetObserver;

    return-void
.end method


# virtual methods
.method public final onListChanged(Ljava/util/List;)V
    .registers 2

    iget-object p0, p0, Lv8/a;->a:Lpantanal/content/GadgetObserver;

    invoke-static {p0, p1}, Lpantanal/content/gadget/GadgetConfigCenter;->a(Lpantanal/content/GadgetObserver;Ljava/util/List;)V

    return-void
.end method
