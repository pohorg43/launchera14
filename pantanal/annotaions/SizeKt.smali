.class public final Lpantanal/annotaions/SizeKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final toSizeString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_22

    const-string p0, "未知"

    goto :goto_20

    :pswitch_6  #0x9
    const-string p0, "notice_lg"

    goto :goto_20

    :pswitch_9  #0x8
    const-string p0, "notice_md"

    goto :goto_20

    :pswitch_c  #0x7
    const-string p0, "notice_sm"

    goto :goto_20

    :pswitch_f  #0x6
    const-string p0, "widget1x1"

    goto :goto_20

    :pswitch_12  #0x5
    const-string p0, "1x3"

    goto :goto_20

    :pswitch_15  #0x4
    const-string p0, "Nx2"

    goto :goto_20

    :pswitch_18  #0x3
    const-string p0, "4x4"

    goto :goto_20

    :pswitch_1b  #0x2
    const-string p0, "2x4"

    goto :goto_20

    :pswitch_1e  #0x1
    const-string p0, "2x1"

    :goto_20
    return-object p0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e  #00000001
        :pswitch_1b  #00000002
        :pswitch_18  #00000003
        :pswitch_15  #00000004
        :pswitch_12  #00000005
        :pswitch_f  #00000006
        :pswitch_c  #00000007
        :pswitch_9  #00000008
        :pswitch_6  #00000009
    .end packed-switch
.end method
