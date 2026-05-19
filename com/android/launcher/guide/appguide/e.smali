.class public final synthetic Lcom/android/launcher/guide/appguide/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/Launcher;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/guide/appguide/AppGuideHelper;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/guide/appguide/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/e;->b:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher/guide/appguide/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/guide/appguide/AppGuideManager;Lcom/android/launcher/Launcher;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/guide/appguide/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/e;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/guide/appguide/e;->b:Lcom/android/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher/guide/appguide/e;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/guide/appguide/e;->b:Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/e;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/guide/appguide/AppGuideHelper;

    invoke-static {v0, p0}, Lcom/android/launcher/guide/appguide/AppGuideManager;->b(Lcom/android/launcher/Launcher;Lcom/android/launcher/guide/appguide/AppGuideHelper;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/launcher/guide/appguide/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/guide/appguide/AppGuideManager;

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/e;->b:Lcom/android/launcher/Launcher;

    invoke-static {v0, p0}, Lcom/android/launcher/guide/appguide/AppGuideManager;->c(Lcom/android/launcher/guide/appguide/AppGuideManager;Lcom/android/launcher/Launcher;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
