.class final Lcom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/db/DbTracker;->getDbDeleteOrUpdateReason(ZZLjava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/launcher3/model/data/ItemInfo;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$3;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$3;

    invoke-direct {v0}, Lcom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$3;-><init>()V

    sput-object v0, Lcom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$3;->INSTANCE:Lcom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$3;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$3;->invoke(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .registers 7

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_c

    move v1, p0

    goto :goto_d

    :cond_c
    move v1, v0

    :goto_d
    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v1, :cond_41

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_22

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1e

    move v1, p0

    goto :goto_1f

    :cond_1e
    move v1, v0

    :goto_1f
    if-ne v1, p0, :cond_22

    goto :goto_23

    :cond_22
    move p0, v0

    :goto_23
    if-eqz p0, :cond_29

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    goto/16 :goto_cb

    :cond_29
    instance-of p0, p1, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz p0, :cond_cb

    const-string p0, "card:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_cb

    :cond_41
    if-eqz p1, :cond_4a

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_4a

    move v1, p0

    goto :goto_4b

    :cond_4a
    move v1, v0

    :goto_4b
    if-eqz v1, :cond_a1

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5e

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_59

    move v1, p0

    goto :goto_5a

    :cond_59
    move v1, v0

    :goto_5a
    if-ne v1, p0, :cond_5e

    move v1, p0

    goto :goto_5f

    :cond_5e
    move v1, v0

    :goto_5f
    if-eqz v1, :cond_65

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    goto/16 :goto_cb

    :cond_65
    instance-of v1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v1, :cond_cb

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v3, :cond_82

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_82

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_7e

    move v3, p0

    goto :goto_7f

    :cond_7e
    move v3, v0

    :goto_7f
    if-ne v3, p0, :cond_82

    goto :goto_83

    :cond_82
    move p0, v0

    :goto_83
    if-eqz p0, :cond_90

    iget-object p0, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz p0, :cond_8e

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    goto :goto_ca

    :cond_8e
    move-object v3, v2

    goto :goto_cb

    :cond_90
    const-string/jumbo p0, "widget:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v0, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_ca

    :cond_a1
    if-eqz p1, :cond_b3

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_b3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_af

    move v1, p0

    goto :goto_b0

    :cond_af
    move v1, v0

    :goto_b0
    if-ne v1, p0, :cond_b3

    goto :goto_b4

    :cond_b3
    move p0, v0

    :goto_b4
    if-eqz p0, :cond_b9

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    goto :goto_cb

    :cond_b9
    if-eqz p1, :cond_c6

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_c6

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c7

    :cond_c6
    move-object p0, v2

    :goto_c7
    if-nez p0, :cond_ca

    goto :goto_cb

    :cond_ca
    :goto_ca
    move-object v3, p0

    :cond_cb
    :goto_cb
    const-string/jumbo p0, "{id="

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-eqz p1, :cond_da

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_da
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", title="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x7d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
