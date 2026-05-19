.class final Lcom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/db/DbTracker;->getDbDeleteOrUpdateReason(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/launcher/db/DbTracker$ItemInfo;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDbTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DbTracker.kt\ncom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,583:1\n1#2:584\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$1;

    invoke-direct {v0}, Lcom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$1;-><init>()V

    sput-object v0, Lcom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$1;->INSTANCE:Lcom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$1;

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

    check-cast p1, Lcom/android/launcher/db/DbTracker$ItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher/db/DbTracker$getDbDeleteOrUpdateReason$1;->invoke(Lcom/android/launcher/db/DbTracker$ItemInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/android/launcher/db/DbTracker$ItemInfo;)Ljava/lang/String;
    .registers 5

    const-string p0, "item"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/db/DbTracker$ItemInfo;->getItemType()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ne p0, v2, :cond_3d

    invoke-virtual {p1}, Lcom/android/launcher/db/DbTracker$ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_21

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_1d

    move p0, v0

    goto :goto_1e

    :cond_1d
    move p0, v1

    :goto_1e
    if-ne p0, v0, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/android/launcher/db/DbTracker$ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_c3

    :cond_2a
    const-string p0, "card:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher/db/DbTracker$ItemInfo;->getCardType()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_c3

    :cond_3d
    invoke-virtual {p1}, Lcom/android/launcher/db/DbTracker$ItemInfo;->getItemType()I

    move-result p0

    const/4 v2, 0x5

    if-ne p0, v2, :cond_8d

    invoke-virtual {p1}, Lcom/android/launcher/db/DbTracker$ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_57

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_52

    move p0, v0

    goto :goto_53

    :cond_52
    move p0, v1

    :goto_53
    if-ne p0, v0, :cond_57

    move p0, v0

    goto :goto_58

    :cond_57
    move p0, v1

    :goto_58
    if-eqz p0, :cond_60

    invoke-virtual {p1}, Lcom/android/launcher/db/DbTracker$ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_c3

    :cond_60
    invoke-virtual {p1}, Lcom/android/launcher/db/DbTracker$ItemInfo;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_72

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_6e

    move p0, v0

    goto :goto_6f

    :cond_6e
    move p0, v1

    :goto_6f
    if-ne p0, v0, :cond_72

    goto :goto_73

    :cond_72
    move v0, v1

    :goto_73
    if-eqz v0, :cond_7a

    invoke-virtual {p1}, Lcom/android/launcher/db/DbTracker$ItemInfo;->getAppWidgetProvider()Ljava/lang/String;

    move-result-object p0

    goto :goto_c3

    :cond_7a
    const-string/jumbo p0, "widget:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher/db/DbTracker$ItemInfo;->getAppWidgetId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c3

    :cond_8d
    invoke-virtual {p1}, Lcom/android/launcher/db/DbTracker$ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9f

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_9b

    move p0, v0

    goto :goto_9c

    :cond_9b
    move p0, v1

    :goto_9c
    if-ne p0, v0, :cond_9f

    goto :goto_a0

    :cond_9f
    move v0, v1

    :goto_a0
    if-eqz v0, :cond_a7

    invoke-virtual {p1}, Lcom/android/launcher/db/DbTracker$ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object p0

    goto :goto_c3

    :cond_a7
    invoke-virtual {p1}, Lcom/android/launcher/db/DbTracker$ItemInfo;->getIntent()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c1

    invoke-static {p0}, Lcom/android/launcher/db/LayoutDataLoaderCursor;->parseIntentDescription(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_be

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_be

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    goto :goto_bf

    :cond_be
    const/4 p0, 0x0

    :goto_bf
    if-nez p0, :cond_c3

    :cond_c1
    const-string p0, ""

    :cond_c3
    :goto_c3
    const-string/jumbo v0, "{id="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher/db/DbTracker$ItemInfo;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", title="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
