.class public final Lcom/android/launcher3/card/groupcard/GroupCardView$Companion$onCardListChangeCb$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/groupcard/GroupCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListChange()V
    .registers 2

    sget-object p0, Lcom/android/launcher3/card/groupcard/GroupCardView;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object p0

    if-eqz p0, :cond_d

    sget-object v0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->INSTANCE:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->tryRejectChildCardForPage(Lcom/android/launcher3/card/LauncherCardView;)V

    :cond_d
    return-void
.end method
