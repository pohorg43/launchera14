.class public final synthetic Lcom/android/launcher/wallpaper/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic c:Lcom/android/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/wallpaper/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/wallpaper/b;->c:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/b;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher/Launcher;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/wallpaper/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/wallpaper/b;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/b;->c:Lcom/android/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher/wallpaper/b;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/wallpaper/b;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/b;->c:Lcom/android/launcher/Launcher;

    invoke-static {v0, p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->a(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher/Launcher;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/launcher/wallpaper/b;->c:Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/b;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, p0}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->j(Lcom/android/launcher/Launcher;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
