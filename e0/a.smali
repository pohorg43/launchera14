.class public final synthetic Le0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic b:Le0/a;

.field public static final synthetic c:Le0/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Le0/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le0/a;-><init>(I)V

    sput-object v0, Le0/a;->b:Le0/a;

    new-instance v0, Le0/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le0/a;-><init>(I)V

    sput-object v0, Le0/a;->c:Le0/a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Le0/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Le0/a;->a:I

    packed-switch p0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher/togglebar/controller/ToggleBarLayoutUIController;->a(Landroid/view/View;)V

    return-void

    :goto_c
    check-cast p1, Lcom/android/launcher3/iconrender/IIconRenderer;

    invoke-interface {p1}, Lcom/android/launcher3/iconrender/IRenderer;->onAttachFromWindowExitPoint()V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
