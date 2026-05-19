.class public final Lcom/oplus/quickstep/utils/OplusAnimManager$special$$inlined$observable$3;
.super Lv4/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/OplusAnimManager;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv4/a<",
        "Lcom/oplus/quickstep/utils/DefaultAnimationController;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$observable$1\n+ 2 OplusAnimManager.kt\ncom/oplus/quickstep/utils/OplusAnimManager\n*L\n1#1,73:1\n43#2:74\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lv4/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public afterChange(Lz4/n;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/n<",
            "*>;",
            "Lcom/oplus/quickstep/utils/DefaultAnimationController;",
            "Lcom/oplus/quickstep/utils/DefaultAnimationController;",
            ")V"
        }
    .end annotation

    const-string p0, "property"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/oplus/quickstep/utils/DefaultAnimationController;

    check-cast p2, Lcom/oplus/quickstep/utils/DefaultAnimationController;

    return-void
.end method
