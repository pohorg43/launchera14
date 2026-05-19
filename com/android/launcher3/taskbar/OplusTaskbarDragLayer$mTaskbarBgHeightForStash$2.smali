.class final Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer$mTaskbarBgHeightForStash$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer$mTaskbarBgHeightForStash$2;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer$mTaskbarBgHeightForStash$2;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;->access$getMContext$p$s-781150152(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "mContext.resources"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarSizePx(Landroid/content/res/Resources;)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayer$mTaskbarBgHeightForStash$2;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
