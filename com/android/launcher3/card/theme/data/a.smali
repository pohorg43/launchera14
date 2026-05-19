.class public final synthetic Lcom/android/launcher3/card/theme/data/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/Observer;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/Observer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/a;->a:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/a;->a:Landroidx/lifecycle/Observer;

    invoke-static {p0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;->a(Landroidx/lifecycle/Observer;)V

    return-void
.end method
