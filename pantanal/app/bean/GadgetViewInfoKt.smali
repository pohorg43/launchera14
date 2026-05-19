.class public final Lpantanal/app/bean/GadgetViewInfoKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final generateDefaultCardViewInfo(Lpantanal/app/bean/GadgetViewInfo;Lpantanal/app/bean/Entrance;I)Lpantanal/app/bean/GadgetViewInfo;
    .registers 12

    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "entrance"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lpantanal/app/bean/GadgetViewInfo;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lpantanal/app/bean/GadgetViewInfo;-><init>(ILjava/util/Set;Ljava/lang/String;ZLjava/lang/String;Lpantanal/app/bean/Entrance;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
