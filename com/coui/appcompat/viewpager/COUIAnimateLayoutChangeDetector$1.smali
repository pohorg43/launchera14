.class Lcom/coui/appcompat/viewpager/COUIAnimateLayoutChangeDetector$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/viewpager/COUIAnimateLayoutChangeDetector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, [I

    check-cast p2, [I

    const/4 p0, 0x0

    aget p1, p1, p0

    aget p0, p2, p0

    sub-int/2addr p1, p0

    return p1
.end method
