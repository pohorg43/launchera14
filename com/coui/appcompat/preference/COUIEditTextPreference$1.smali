.class Lcom/coui/appcompat/preference/COUIEditTextPreference$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIEditTextPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/preference/COUIEditTextPreference;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/preference/COUIEditTextPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference$1;->a:Lcom/coui/appcompat/preference/COUIEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_17

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference$1;->a:Lcom/coui/appcompat/preference/COUIEditTextPreference;

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->g:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    :cond_17
    const/4 p0, 0x0

    return p0
.end method
