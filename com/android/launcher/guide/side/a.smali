.class public final synthetic Lcom/android/launcher/guide/side/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/guide/side/GuideLearningViewAdapter;I)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/guide/side/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/guide/side/a;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;I)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/guide/side/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/guide/side/a;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;I)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/guide/side/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/a;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/guide/side/a;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/guide/side/a;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher/guide/side/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    iget p0, p0, Lcom/android/launcher/guide/side/a;->c:I

    invoke-static {v0, p0, p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->c(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;ILandroid/view/View;)V

    return-void

    :pswitch_10  #0x0
    iget-object v0, p0, Lcom/android/launcher/guide/side/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;

    iget p0, p0, Lcom/android/launcher/guide/side/a;->c:I

    invoke-static {v0, p0, p1}, Lcom/android/launcher/guide/side/GuideLearningViewAdapter;->a(Lcom/android/launcher/guide/side/GuideLearningViewAdapter;ILandroid/view/View;)V

    return-void

    :goto_1a
    iget-object v0, p0, Lcom/android/launcher/guide/side/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    iget p0, p0, Lcom/android/launcher/guide/side/a;->c:I

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->d(Lcom/android/wm/shell/pip/tv/TvPipMenuView;ILandroid/view/View;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
