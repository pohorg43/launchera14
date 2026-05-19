.class public final Lpantanal/app/groupcard/popup/Popup;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/popup/PopupItem;",
            ">;"
        }
    .end annotation
.end field

.field private final location:Lpantanal/app/groupcard/popup/PopupLocation;


# direct methods
.method public constructor <init>(Lpantanal/app/groupcard/popup/PopupLocation;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/groupcard/popup/PopupLocation;",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/popup/PopupItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/groupcard/popup/Popup;->location:Lpantanal/app/groupcard/popup/PopupLocation;

    iput-object p2, p0, Lpantanal/app/groupcard/popup/Popup;->items:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/groupcard/popup/Popup;Lpantanal/app/groupcard/popup/PopupLocation;Ljava/util/List;ILjava/lang/Object;)Lpantanal/app/groupcard/popup/Popup;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lpantanal/app/groupcard/popup/Popup;->location:Lpantanal/app/groupcard/popup/PopupLocation;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lpantanal/app/groupcard/popup/Popup;->items:Ljava/util/List;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lpantanal/app/groupcard/popup/Popup;->copy(Lpantanal/app/groupcard/popup/PopupLocation;Ljava/util/List;)Lpantanal/app/groupcard/popup/Popup;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lpantanal/app/groupcard/popup/PopupLocation;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/popup/Popup;->location:Lpantanal/app/groupcard/popup/PopupLocation;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/popup/PopupItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/groupcard/popup/Popup;->items:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Lpantanal/app/groupcard/popup/PopupLocation;Ljava/util/List;)Lpantanal/app/groupcard/popup/Popup;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/groupcard/popup/PopupLocation;",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/popup/PopupItem;",
            ">;)",
            "Lpantanal/app/groupcard/popup/Popup;"
        }
    .end annotation

    const-string p0, "location"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "items"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lpantanal/app/groupcard/popup/Popup;

    invoke-direct {p0, p1, p2}, Lpantanal/app/groupcard/popup/Popup;-><init>(Lpantanal/app/groupcard/popup/PopupLocation;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/groupcard/popup/Popup;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/groupcard/popup/Popup;

    iget-object v1, p0, Lpantanal/app/groupcard/popup/Popup;->location:Lpantanal/app/groupcard/popup/PopupLocation;

    iget-object v3, p1, Lpantanal/app/groupcard/popup/Popup;->location:Lpantanal/app/groupcard/popup/PopupLocation;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lpantanal/app/groupcard/popup/Popup;->items:Ljava/util/List;

    iget-object p1, p1, Lpantanal/app/groupcard/popup/Popup;->items:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getItems()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/popup/PopupItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/groupcard/popup/Popup;->items:Ljava/util/List;

    return-object p0
.end method

.method public final getLocation()Lpantanal/app/groupcard/popup/PopupLocation;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/popup/Popup;->location:Lpantanal/app/groupcard/popup/PopupLocation;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lpantanal/app/groupcard/popup/Popup;->location:Lpantanal/app/groupcard/popup/PopupLocation;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lpantanal/app/groupcard/popup/Popup;->items:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lpantanal/app/groupcard/popup/Popup;->location:Lpantanal/app/groupcard/popup/PopupLocation;

    iget-object p0, p0, Lpantanal/app/groupcard/popup/Popup;->items:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Popup(location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", items="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
