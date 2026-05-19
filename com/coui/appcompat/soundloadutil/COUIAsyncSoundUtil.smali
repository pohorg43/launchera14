.class public Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final d:Z

.field public static e:Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;


# instance fields
.field public final a:Landroid/util/SparseIntArray;

.field public final b:Landroid/content/Context;

.field public volatile c:Landroid/media/SoundPool;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->a:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "COUIAsyncSoundUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->c:Landroid/media/SoundPool;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->b:Landroid/content/Context;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/soundloadutil/COUIAsyncSoundUtil;->a:Landroid/util/SparseIntArray;

    return-void
.end method
