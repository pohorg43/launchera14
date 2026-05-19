.class public final synthetic Lcom/android/launcher3/g1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/g1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/g1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/g1;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/g1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/g1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/g1;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;Lcom/android/launcher3/dragndrop/DragCardInfo;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/g1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/g1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/g1;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/MainThreadInitializedObject;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/g1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/g1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/g1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher3/g1;->a:I

    packed-switch v0, :pswitch_data_3a

    goto :goto_2d

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/launcher3/g1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/g1;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->b(Lcom/android/launcher3/util/MainThreadInitializedObject;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_13  #0x1
    iget-object v0, p0, Lcom/android/launcher3/g1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    iget-object p0, p0, Lcom/android/launcher3/g1;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/dragndrop/DragCardInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->a(Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;Lcom/android/launcher3/dragndrop/DragCardInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_20  #0x0
    iget-object v0, p0, Lcom/android/launcher3/g1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/OplusLauncherModel;

    iget-object p0, p0, Lcom/android/launcher3/g1;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/OplusLauncherModel;->m(Lcom/android/launcher3/OplusLauncherModel;Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_2d
    iget-object v0, p0, Lcom/android/launcher3/g1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/g1;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/views/OplusFloatingIconView;->m(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_20  #00000000
        :pswitch_13  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
