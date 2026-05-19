.class public final synthetic Landroidx/lifecycle/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/MediatorLiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/MediatorLiveData;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/a;->a:Landroidx/lifecycle/MediatorLiveData;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Landroidx/lifecycle/a;->a:Landroidx/lifecycle/MediatorLiveData;

    invoke-static {p0, p1}, Landroidx/lifecycle/CoroutineLiveDataKt$addDisposableSource$2;->a(Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)V

    return-void
.end method
