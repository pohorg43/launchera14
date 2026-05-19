.class public final synthetic Lcom/android/launcher3/x0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/x0;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/x0;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/x0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->l0(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/x0;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherModel$7;->l(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
