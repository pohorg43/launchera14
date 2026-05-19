.class public final Lpantanal/exception/CardNotSupportException;
.super Ljava/lang/RuntimeException;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/exception/CardNotSupportException$a;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/exception/CardNotSupportException$a;

.field private static final MSG_NOT_SUPPORT:Ljava/lang/String; = "\nCARD NOT SUPPORT ! NOT SUPPORT CARD is: "


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/exception/CardNotSupportException$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/exception/CardNotSupportException$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/exception/CardNotSupportException;->Companion:Lpantanal/exception/CardNotSupportException$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "\nCARD NOT SUPPORT ! NOT SUPPORT CARD is: "

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "\nCARD NOT SUPPORT ! NOT SUPPORT CARD is:  + "

    invoke-static {v0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
