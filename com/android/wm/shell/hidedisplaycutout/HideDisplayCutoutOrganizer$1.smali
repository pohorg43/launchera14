.class Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer$1;->this$0:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer$1;->this$0:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

    invoke-static {p0, p1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->access$000(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;I)V

    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer$1;->this$0:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

    invoke-static {p0, p1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->access$000(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;I)V

    return-void
.end method
