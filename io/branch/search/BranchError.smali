.class public abstract Lio/branch/search/BranchError;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/BranchError$j;,
        Lio/branch/search/BranchError$u;,
        Lio/branch/search/BranchError$t;,
        Lio/branch/search/BranchError$f;,
        Lio/branch/search/BranchError$e;,
        Lio/branch/search/BranchError$d;,
        Lio/branch/search/BranchError$s;,
        Lio/branch/search/BranchError$a;,
        Lio/branch/search/BranchError$r;,
        Lio/branch/search/BranchError$h;,
        Lio/branch/search/BranchError$i;,
        Lio/branch/search/BranchError$b;,
        Lio/branch/search/BranchError$g;,
        Lio/branch/search/BranchError$l;,
        Lio/branch/search/BranchError$k;,
        Lio/branch/search/BranchError$q;,
        Lio/branch/search/BranchError$n;,
        Lio/branch/search/BranchError$p;,
        Lio/branch/search/BranchError$o;,
        Lio/branch/search/BranchError$m;,
        Lio/branch/search/BranchError$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \t2\u00020\u0001:\u0015\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001eB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u001c\u0010\u0003\u001a\u00020\u00028\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0014\u001f !\"#$%&\'()*+,-./012¨\u00063"
    }
    d2 = {
        "Lio/branch/search/BranchError;",
        "",
        "",
        "message",
        "Ljava/lang/String;",
        "getMessage",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;)V",
        "Companion",
        "a",
        "b",
        "c",
        "d",
        "e",
        "f",
        "g",
        "h",
        "i",
        "j",
        "k",
        "l",
        "m",
        "n",
        "o",
        "p",
        "q",
        "r",
        "s",
        "t",
        "u",
        "Lio/branch/search/BranchError$j;",
        "Lio/branch/search/BranchError$u;",
        "Lio/branch/search/BranchError$t;",
        "Lio/branch/search/BranchError$f;",
        "Lio/branch/search/BranchError$e;",
        "Lio/branch/search/BranchError$d;",
        "Lio/branch/search/BranchError$s;",
        "Lio/branch/search/BranchError$a;",
        "Lio/branch/search/BranchError$r;",
        "Lio/branch/search/BranchError$h;",
        "Lio/branch/search/BranchError$i;",
        "Lio/branch/search/BranchError$b;",
        "Lio/branch/search/BranchError$g;",
        "Lio/branch/search/BranchError$l;",
        "Lio/branch/search/BranchError$k;",
        "Lio/branch/search/BranchError$q;",
        "Lio/branch/search/BranchError$n;",
        "Lio/branch/search/BranchError$p;",
        "Lio/branch/search/BranchError$o;",
        "Lio/branch/search/BranchError$m;",
        "BranchSearchSDK_forPartnersRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/BranchError$c;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/BranchError$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/BranchError$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/BranchError;->message:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/branch/search/BranchError;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final mapFromLocalError(Lio/branch/search/BranchLocalError;)Lio/branch/search/BranchError;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    invoke-virtual {v0, p0}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchLocalError;)Lio/branch/search/BranchError;

    move-result-object p0

    return-object p0
.end method

.method public static final mapFromRemoteError(Lio/branch/search/BranchSearchError;)Lio/branch/search/BranchError;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    invoke-virtual {v0, p0}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchSearchError;)Lio/branch/search/BranchError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchError;->message:Ljava/lang/String;

    return-object p0
.end method
