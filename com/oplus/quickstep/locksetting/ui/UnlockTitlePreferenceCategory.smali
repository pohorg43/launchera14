.class public final Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory;
.super Lcom/coui/appcompat/preference/COUIPreferenceCategory;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;,
        Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$Companion;

.field private static final TAG:Ljava/lang/String; = "UnlockTitlePreferenceCategory"


# instance fields
.field private final tipIconClickListener$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory;->Companion:Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$tipIconClickListener$2;

    invoke-direct {p2, p1}, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$tipIconClickListener$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory;->tipIconClickListener$delegate:Lh4/f;

    return-void
.end method

.method private final getTipIconClickListener()Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory;->tipIconClickListener$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;

    return-object p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/preference/PreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    sget-boolean v0, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    const v1, 0x7f0a06a0

    if-eqz v0, :cond_2c

    if-eqz p1, :cond_1e

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1e

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory;->getTipIconClickListener()Lcom/oplus/quickstep/locksetting/ui/UnlockTitlePreferenceCategory$TipIconClickListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3c

    :cond_1e
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_3c

    const-string p0, "UnlockTitlePreferenceCategory"

    const-string p1, "set tip icon click listener fail"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_2c
    if-eqz p1, :cond_33

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    goto :goto_34

    :cond_33
    const/4 p0, 0x0

    :goto_34
    if-nez p0, :cond_37

    goto :goto_3c

    :cond_37
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3c
    :goto_3c
    return-void
.end method
