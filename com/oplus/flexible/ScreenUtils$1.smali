.class Lcom/oplus/flexible/ScreenUtils$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/flexible/ScreenUtils;->initAndRegisterFoldingModeChangeObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/flexible/ScreenUtils;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/oplus/flexible/ScreenUtils;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/flexible/ScreenUtils$1;->this$0:Lcom/oplus/flexible/ScreenUtils;

    iput-object p3, p0, Lcom/oplus/flexible/ScreenUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/flexible/ScreenUtils$1;->this$0:Lcom/oplus/flexible/ScreenUtils;

    iget-object v1, p0, Lcom/oplus/flexible/ScreenUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oplus_system_folding_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/flexible/ScreenUtils;->access$002(Lcom/oplus/flexible/ScreenUtils;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current folding state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/flexible/ScreenUtils$1;->this$0:Lcom/oplus/flexible/ScreenUtils;

    invoke-static {v1}, Lcom/oplus/flexible/ScreenUtils;->access$000(Lcom/oplus/flexible/ScreenUtils;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method
