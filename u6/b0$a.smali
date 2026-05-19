.class public final Lu6/b0$a;
.super Lu6/b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final d:Lc6/b;

.field public final e:Lu6/b0$a;

.field public final f:Lh6/b;

.field public final g:Lc6/b$c;

.field public final h:Z


# direct methods
.method public constructor <init>(Lc6/b;Le6/c;Le6/g;Li5/v0;Lu6/b0$a;)V
    .registers 7

    const-string v0, "classProto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lu6/b0;-><init>(Le6/c;Le6/g;Li5/v0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lu6/b0$a;->d:Lc6/b;

    iput-object p5, p0, Lu6/b0$a;->e:Lu6/b0$a;

    iget p3, p1, Lc6/b;->e:I

    invoke-static {p2, p3}, Lu6/z;->a(Le6/c;I)Lh6/b;

    move-result-object p2

    iput-object p2, p0, Lu6/b0$a;->f:Lh6/b;

    sget-object p2, Le6/b;->f:Le6/b$d;

    iget p3, p1, Lc6/b;->d:I

    invoke-virtual {p2, p3}, Le6/b$d;->b(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc6/b$c;

    if-nez p2, :cond_2d

    sget-object p2, Lc6/b$c;->b:Lc6/b$c;

    :cond_2d
    iput-object p2, p0, Lu6/b0$a;->g:Lc6/b$c;

    sget-object p2, Le6/b;->g:Le6/b$b;

    iget p1, p1, Lc6/b;->d:I

    const-string p3, "IS_INNER.get(classProto.flags)"

    invoke-static {p2, p1, p3}, La6/c;->a(Le6/b$b;ILjava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lu6/b0$a;->h:Z

    return-void
.end method


# virtual methods
.method public a()Lh6/c;
    .registers 2

    iget-object p0, p0, Lu6/b0$a;->f:Lh6/b;

    invoke-virtual {p0}, Lh6/b;->b()Lh6/c;

    move-result-object p0

    const-string v0, "classId.asSingleFqName()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
