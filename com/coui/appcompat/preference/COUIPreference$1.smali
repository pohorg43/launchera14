.class Lcom/coui/appcompat/preference/COUIPreference$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIPreference;->initPreciseHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/preference/COUIPreference;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/preference/COUIPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference$1;->a:Lcom/coui/appcompat/preference/COUIPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference$1;->a:Lcom/coui/appcompat/preference/COUIPreference;

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mPreciseListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;->a(Landroid/view/View;II)V

    return-void
.end method
