.class public final Lv3/g0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/g0$l;,
        Lv3/g0$k;
    }
.end annotation


# static fields
.field public static final a:Lv3/r$a;

.field public static final b:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lv3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/r<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv3/g0$b;

    invoke-direct {v0}, Lv3/g0$b;-><init>()V

    sput-object v0, Lv3/g0;->a:Lv3/r$a;

    new-instance v0, Lv3/g0$c;

    invoke-direct {v0}, Lv3/g0$c;-><init>()V

    sput-object v0, Lv3/g0;->b:Lv3/r;

    new-instance v0, Lv3/g0$d;

    invoke-direct {v0}, Lv3/g0$d;-><init>()V

    sput-object v0, Lv3/g0;->c:Lv3/r;

    new-instance v0, Lv3/g0$e;

    invoke-direct {v0}, Lv3/g0$e;-><init>()V

    sput-object v0, Lv3/g0;->d:Lv3/r;

    new-instance v0, Lv3/g0$f;

    invoke-direct {v0}, Lv3/g0$f;-><init>()V

    sput-object v0, Lv3/g0;->e:Lv3/r;

    new-instance v0, Lv3/g0$g;

    invoke-direct {v0}, Lv3/g0$g;-><init>()V

    sput-object v0, Lv3/g0;->f:Lv3/r;

    new-instance v0, Lv3/g0$h;

    invoke-direct {v0}, Lv3/g0$h;-><init>()V

    sput-object v0, Lv3/g0;->g:Lv3/r;

    new-instance v0, Lv3/g0$i;

    invoke-direct {v0}, Lv3/g0$i;-><init>()V

    sput-object v0, Lv3/g0;->h:Lv3/r;

    new-instance v0, Lv3/g0$j;

    invoke-direct {v0}, Lv3/g0$j;-><init>()V

    sput-object v0, Lv3/g0;->i:Lv3/r;

    new-instance v0, Lv3/g0$a;

    invoke-direct {v0}, Lv3/g0$a;-><init>()V

    sput-object v0, Lv3/g0;->j:Lv3/r;

    return-void
.end method

.method public static a(Lv3/w;Ljava/lang/String;II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lv3/w;->h()I

    move-result v0

    if-lt v0, p2, :cond_9

    if-gt v0, p3, :cond_9

    return v0

    :cond_9
    new-instance p2, Lv3/t;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p3, v1

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p1

    const/4 p1, 0x2

    invoke-virtual {p0}, Lv3/w;->getPath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, p1

    const-string p0, "Expected %s but was %s at path %s"

    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lv3/t;-><init>(Ljava/lang/String;)V

    throw p2
.end method
