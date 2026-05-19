.class public final synthetic Lcom/android/launcher3/allapps/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(ILcom/android/quickstep/OplusBaseRecentsModel;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/allapps/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/allapps/q;->d:I

    iput-object p2, p0, Lcom/android/launcher3/allapps/q;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/allapps/q;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/WorkAdapterProvider;Landroid/view/View;I)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/q;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/allapps/q;->c:Ljava/lang/Object;

    iput p3, p0, Lcom/android/launcher3/allapps/q;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/shortcuts/OplusExternalScreenShortcut;ILandroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/allapps/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/q;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/allapps/q;->d:I

    iput-object p3, p0, Lcom/android/launcher3/allapps/q;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/ZoomRootTaskController;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/allapps/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/q;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/allapps/q;->c:Ljava/lang/Object;

    iput p3, p0, Lcom/android/launcher3/allapps/q;->d:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/allapps/q;->a:I

    packed-switch v0, :pswitch_data_46

    goto :goto_36

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/launcher3/allapps/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/shortcuts/OplusExternalScreenShortcut;

    iget v1, p0, Lcom/android/launcher3/allapps/q;->d:I

    iget-object p0, p0, Lcom/android/launcher3/allapps/q;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p0, p1}, Lcom/oplus/quickstep/shortcuts/OplusExternalScreenShortcut;->j(Lcom/oplus/quickstep/shortcuts/OplusExternalScreenShortcut;ILandroid/os/Bundle;Ljava/lang/Boolean;)V

    return-void

    :pswitch_16  #0x1
    iget v0, p0, Lcom/android/launcher3/allapps/q;->d:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/q;->b:Ljava/lang/Object;

    check-cast v1, Lcom/android/quickstep/OplusBaseRecentsModel;

    iget-object p0, p0, Lcom/android/launcher3/allapps/q;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/OplusBaseRecentsModel;->c(ILcom/android/quickstep/OplusBaseRecentsModel;Lcom/android/systemui/shared/recents/model/ThumbnailData;Ljava/util/ArrayList;)V

    return-void

    :pswitch_26  #0x0
    iget-object v0, p0, Lcom/android/launcher3/allapps/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/allapps/WorkAdapterProvider;

    iget-object v1, p0, Lcom/android/launcher3/allapps/q;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget p0, p0, Lcom/android/launcher3/allapps/q;->d:I

    check-cast p1, Lcom/android/launcher3/model/StringCache;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/allapps/WorkAdapterProvider;->a(Lcom/android/launcher3/allapps/WorkAdapterProvider;Landroid/view/View;ILcom/android/launcher3/model/StringCache;)V

    return-void

    :goto_36
    iget-object v0, p0, Lcom/android/launcher3/allapps/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/zoom/ZoomRootTaskController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/q;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Lcom/android/launcher3/allapps/q;->d:I

    check-cast p1, Lcom/oplus/zoom/ZoomRootTaskManager;

    invoke-static {v0, v1, p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->r(Lcom/oplus/zoom/ZoomRootTaskController;Landroid/app/ActivityManager$RunningTaskInfo;ILcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_16  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
