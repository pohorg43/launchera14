.class final Lcom/android/launcher3/card/CommonCardView$refreshForPermissionChanged$cardModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/CommonCardView;->refreshForPermissionChanged(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/oplus/card/manager/domain/model/CardModel;",
        "Ljava/lang/Boolean;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/card/CommonCardView$refreshForPermissionChanged$cardModel$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/CommonCardView$refreshForPermissionChanged$cardModel$1;

    invoke-direct {v0}, Lcom/android/launcher3/card/CommonCardView$refreshForPermissionChanged$cardModel$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/CommonCardView$refreshForPermissionChanged$cardModel$1;->INSTANCE:Lcom/android/launcher3/card/CommonCardView$refreshForPermissionChanged$cardModel$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/oplus/card/manager/domain/model/CardModel;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/CommonCardView$refreshForPermissionChanged$cardModel$1;->invoke(Lcom/oplus/card/manager/domain/model/CardModel;Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Lcom/oplus/card/manager/domain/model/CardModel;Z)V
    .registers 3

    const-string p0, "cardModel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
