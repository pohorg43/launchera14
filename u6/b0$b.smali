.class public final Lu6/b0$b;
.super Lu6/b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final d:Lh6/c;


# direct methods
.method public constructor <init>(Lh6/c;Le6/c;Le6/g;Li5/v0;)V
    .registers 6

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lu6/b0;-><init>(Le6/c;Le6/g;Li5/v0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lu6/b0$b;->d:Lh6/c;

    return-void
.end method


# virtual methods
.method public a()Lh6/c;
    .registers 1

    iget-object p0, p0, Lu6/b0$b;->d:Lh6/c;

    return-object p0
.end method
