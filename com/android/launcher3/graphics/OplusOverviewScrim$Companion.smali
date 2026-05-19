.class public final Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/OplusOverviewScrim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getScrimProgressWithChannel(I)Landroid/util/FloatProperty;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/graphics/OplusOverviewScrim;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo p0, "scrimProgress-"

    invoke-static {p0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion$getScrimProgressWithChannel$1;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion$getScrimProgressWithChannel$1;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
