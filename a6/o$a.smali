.class public final La6/o$a;
.super La6/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La6/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final j:La6/o;


# direct methods
.method public constructor <init>(La6/o;)V
    .registers 3

    const-string v0, "elementType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La6/o;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, La6/o$a;->j:La6/o;

    return-void
.end method
