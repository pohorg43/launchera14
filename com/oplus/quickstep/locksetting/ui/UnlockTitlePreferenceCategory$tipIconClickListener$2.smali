.class final Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$tipIconClickListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$tipIconClickListener$2;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$tipIconClickListener$2;->$context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$tipIconClickListener$2;->invoke()Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;

    move-result-object p0

    return-object p0
.end method
