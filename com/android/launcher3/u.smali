.class public final synthetic Lcom/android/launcher3/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/u;

.field public static final synthetic c:Lcom/android/launcher3/u;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/u;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/u;->b:Lcom/android/launcher3/u;

    new-instance v0, Lcom/android/launcher3/u;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/u;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/u;->c:Lcom/android/launcher3/u;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    iget p0, p0, Lcom/android/launcher3/u;->a:I

    packed-switch p0, :pswitch_data_14

    goto :goto_d

    :pswitch_6  #0x0
    check-cast p1, Lcom/android/launcher3/ButtonDropTarget;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0

    :goto_d
    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    return p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
