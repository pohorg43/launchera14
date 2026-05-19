.class public final synthetic Lcom/coui/appcompat/preference/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic a:Lcom/coui/appcompat/preference/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/preference/a;

    invoke-direct {v0}, Lcom/coui/appcompat/preference/a;-><init>()V

    sput-object v0, Lcom/coui/appcompat/preference/a;->a:Lcom/coui/appcompat/preference/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_b

    const/16 p0, 0x12e

    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_b
    const/4 p0, 0x0

    return p0
.end method
